import pandas as pd
import json
import sqlite3

# Load data
with open("file.json") as f:
	data = json.load(f)
df = pd.DataFrame(data)

# convert the data 
connection = sqlite3.connect("data.sql") # will create this file in the same folder as the json file (can also be changed to "data.db")
c = connection.cursor()
df.to_sql("events",connection)
