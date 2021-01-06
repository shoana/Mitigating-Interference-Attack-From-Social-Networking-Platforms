import json
import sys

TABLE_NAME = "event_table"

sqlstatement = ''
with open ('file.json','r') as f:
    jsondata = json.loads(f.read())

for json in jsondata:
    keylist = "("
    k = "("
    valuelist = "("
    firstPair = True
    
    for key, value in json.items():
        if not firstPair:
            keylist += ", "
            valuelist += ", "
        firstPair = False
        keylist += key + " VARCHAR(40)"
        if type(value) in (str, str):
            valuelist += "'" + value + "'"
        else:
            valuelist += str(value)
    keylist += ")"
    valuelist += ")"

    sqlstatement += valuelist + ",\n"
    #sqlstatement += "INSERT INTO " + TABLE_NAME + " " + keylist + " VALUES " + valuelist + "\n"


original_stdout = sys.stdout
with open('data.sql','w') as file:
    sys.stdout = file
    print("CREATE TABLE IF NOT EXISTS ", TABLE_NAME, " ", keylist, ";\n")
    print("INSERT INTO ", TABLE_NAME, "VALUES\n")
    print(sqlstatement[:-2])
    print(";")
    sys.stdout = original_stdout
