import re
regex = re.compile("(.*){ latitude:([-+]?[0-9]*\.?[0-9]*), longitude:([-+]?[0-9]*\.?[0-9]*)(.*)")
with open("mongoCities100000.json") as f:
    for line in f:
        line = line.rstrip()
        if regex.match(line):
            result = regex.match(line)
            print result.group(1) + "{ longitude:" + result.group(3) + ", latitude:" + result.group(2) + result.group(4)
        else:
            print line
