import json

with open('file.json') as json_data:
    d = json.load(json_data)

    for i in d:
        print(i)
    #print(fields)
