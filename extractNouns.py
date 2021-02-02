import json
import pandas as pd
from pandas.io.json import json_normalize
import nltk
from nltk.tag import pos_tag
from nltk import word_tokenize

#create INSTAGRAM message data table
with open('Data/message_1.json') as json_data:
  data = json.load(json_data)
df = pd.DataFrame.from_dict(data['messages'])
df3 = pd.DataFrame.from_dict(df['content'])

print("--------------content--------------\n")
print(df3)

print("--------------nouns---------------\n")

#extracting nouns 
df3['noun'] = df3.apply(lambda row: nltk.word_tokenize(row['noun']), axis=1) 
noun=[]
for  index, row in df3.iterrows():
    noun.append([word for word,pos in pos_tag(row[0]) if pos == 'NN'])
print(noun)
