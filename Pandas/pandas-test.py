import json
import pandas as pd
from pandas.io.json import json_normalize
from tabulate import tabulate


#FUNCTIONS FOR EACH SOCIAL MEDIA JSON FILE
def analyzeInstagramMessages(filename):
    #create INSTAGRAM message data table
    # filename = 'Data/message_1.json'
    with open(filename) as json_data:
        data = json.load(json_data)
        df = pd.DataFrame.from_dict(data['messages'])
        df2 = pd.DataFrame.from_dict(data['participants'])

        #print(df)

        #print("-------conversation participants-----------\n")
        #print(df2)
        return df

def analyzeInstagramAccountHistory(filename):
    #create INSTAGRAM account history table
    #name 'Data/account_history.json'
    with open(filename) as json_data:
        data = json.load(json_data)
        df3 = pd.DataFrame.from_dict(data['login_history'])

        #print("-------device history-----------\n")
        #print(df3)

def analyzeSnapchatLocationHistory(filename):
    #SNAPCHAT create location history table
    # 'Data/location_history.json'
    with open(filename) as json_data:
        data = json.load(json_data)
        df4 = pd.DataFrame.from_dict(data['Location History'])

        #print("-------location history-----------\n")
        #print(df4)
        return df4

def printLocationAnalysis(dataframe):
    print("\n-------TESTING METRICS----------\n")
    #Most location occurrences in location data - Inferring home address
    print("\nSecurity Policy: Home address should not be known")
    print("\nTop Location Occurrence: \n")
    print(dataframe['Latitude, Longitude'].value_counts().idxmax())

    #location data + timestamp of holidays (Found thanksgiving) - Inferring childhood home
    print("\nSecurity Policy: Common Security Questions: Childhood home address")
    print("\nLocations during thanksgiving holiday: \n")
    print(dataframe[dataframe['Time'].str.contains("10/12")])


def convertDataFrameToOutput(data, securityPolicy):
    print(tabulate([[securityPolicy, data, 'Confidence']], headers=['Security Policy', 'Result', 'Confidence']))


def chooseFunction(input, filename):
    if(input == "snapchat"):
        if(filename.find("location") != -1):
            dataframe = analyzeSnapchatLocationHistory(filename)
            print("Received snapchat location history")
            convertDataFrameToOutput(dataframe['Latitude, Longitude'].value_counts().idxmax(),'Common Security Questions: Home Address')
    if(input == "instagram"):
        if(filename.find("message") != -1):
            dataframe1 = analyzeInstagramMessages(filename)
            print("Received Instagram Message History")
            convertDataFrameToOutput(dataframe[dataframe['Time'].str.contains("10/12")], 'Common Security Questions: Childhood Home Address')

#messages - natural language processing api for nouns? top hits (security questions:
# hobbies, cities, names)


if __name__ == "__main__":
    filename = input("Enter your file: ")
    socialMediaType = input("Input the name of the social media: ")
    chooseFunction(socialMediaType.lower(), filename)
