import json
import pandas as pd
from pandas.io.json import json_normalize


#TESTING - USING SARAH'S DATA

#create INSTAGRAM message data table
with open('Data/message_1.json') as json_data:
    data = json.load(json_data)
    df = pd.DataFrame.from_dict(data['messages'])
    df2 = pd.DataFrame.from_dict(data['participants'])

    print(df)

    print("-------conversation participants-----------\n")
    print(df2)


#create INSTAGRAM account history table

with open('Data/account_history.json') as json_data:
    data = json.load(json_data)
    df3 = pd.DataFrame.from_dict(data['login_history'])
   	
    print("-------device history-----------\n")
    print(df3)


#SNAPCHAT create location history table
with open('Data/location_history.json') as json_data:
    data = json.load(json_data)
    df4 = pd.DataFrame.from_dict(data['Location History'])
   	
    print("-------location history-----------\n")
    print(df4)



# METRICS: SECURITY POLICY
print("\n-------TESTING METRICS----------\n")

#Most location occurrences in location data - Inferring home address
print("\nTop Location Occurrence: \n")
print(df4['Latitude, Longitude'].value_counts().idxmax())

#location data + timestamp of holidays (Found thanksgiving) - Inferring childhood home
print("\nLocations during thanksgiving holiday: \n")
print(df4[df4['Time'].str.contains("01/01")])


#messages - natural language processing api for nouns? top hits (security questions: 
# hobbies, cities, names)







