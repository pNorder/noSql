#---
# Excerpted from "Seven Databases in Seven Weeks",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/pwrdata for more book information.
#---

require 'time'

import 'org.apache.hadoop.hbase.client.HTable'
import 'org.apache.hadoop.hbase.client.Put'
import 'javax.xml.stream.XMLStreamConstants'

def jbytes(*args)
  args.map { |arg| arg.to_s.to_java_bytes }
end

factory = javax.xml.stream.XMLInputFactory.newInstance
reader = factory.createXMLStreamReader(java.lang.System.in)

column_titles = ["Food_Code","Display_Name","Portion_Default","Portion_Amount","Portion_Display_Name","Factor","Increment","Multiplier","Grains","Whole_Grains","Vegetables","Orange_Vegetables","Drkgreen_Vegetables","Starchy_vegetables","Other_Vegetables","Fruits","Milk","Meats","Soy","Drybeans_Peas","Oils","Solid_Fats","Added_Sugars","Alcohol","Calories","Saturated_Fats"]

document = nil
buffer = nil
count = 0

table = HTable.new(@hbase.configuration, 'foods')
table.setAutoFlush(false)

while reader.has_next
  type = reader.next

  if type == XMLStreamConstants::START_ELEMENT

    case reader.local_name
    when 'Food_Display_Row' then document = {}
    when *column_titles then buffer = []
    end

  elsif type == XMLStreamConstants::CHARACTERS

    buffer << reader.text unless buffer.nil?

  elsif type == XMLStreamConstants::END_ELEMENT

    case reader.local_name
    when *column_titles
      document[reader.local_name] = buffer.join
    when 'Food_Display_Row'
      key = document['Food_Code'].to_java_bytes
      #ts = (Time.parse document['timestamp']).to_i

      p = Put.new(key)#, ts)
      #Loop through all xml tags, put them in col family facts, col name = tag name and content
      column_titles.each { |item|
        if item == 'Food_Code'
            next #Since food_Code is the row key, dont need it as column
        end
        
        p.add(*jbytes("facts", item, document[item]))
      }

      table.put(p)

      count += 1
      table.flushCommits() if count % 10 == 0
      if count % 50 == 0
        puts "#{count} records inserted (#{document['Food_Code']})"
      end
    end
  end
end

table.flushCommits()
exit
