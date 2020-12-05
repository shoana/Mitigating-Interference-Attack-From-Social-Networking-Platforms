import json
import os
import sqlite3

# Load data
with open("file.json") as f: data=json.load(f)

# Find all keys
keys = []
for row in data:
    for key in row.keys():
        if key not in keys:
            keys.append(key)

# Print table definition
print ("CREATE TABLE MY_TABLE( {0} );".format(",\n  ".join(map(lambda key: "{0} VARCHAR".format(key), keys))))

# Now, for all rows, print values
for row in data:
    print ("INSERT INTO MY_TABLE VALUES({0});""".format(",".join(map(lambda key: "'{0}'".format(row[key]) if key in row else "NULL", keys))))
