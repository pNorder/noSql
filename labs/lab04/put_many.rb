import 'org.apache.hadoop.hbase.client.HTable'
import 'org.apache.hadoop.hbase.client.Put'

def jbytes(*args)
	args.map {|arg| arg.to_s.to_java_bytes}
end

def put_many(table_name, row, column_values)
   # your code here
	#
	table = HTable.new(@hbase.configuration, table_name)

	p = Put.new(*jbytes(row))

	column_values.each do |key, value|
		famTitle = key.split(":")
		puts famTitle
		p.add(*jbytes(famTitle[0],famTitle[1], value))
	end
	table.put(p)
end
