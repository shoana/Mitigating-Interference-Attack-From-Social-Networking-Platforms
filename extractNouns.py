import nltk
import json
import pandas as pd
from pandas.io.json import json_normalize
from nltk.tag import pos_tag
from nltk import word_tokenize

with open('Data/message_1.json') as json_data:
  data = json.load(json_data)
df = pd.DataFrame.from_dict(data['messages'])

#extracting just the message content
df3 = pd.DataFrame.from_dict(df['content'])

#stores the message data in a text file so it can be parsed with nltk to find nouns
with open('messageData.txt', 'w') as f:
    f.write(
        df3.to_string(header = False, index = False)
    )  
file = open("messageData.txt", "r")
lines = file.read()

# function to test if something is a noun
is_noun = lambda pos: pos[:2] == 'NN'

# do the nlp stuff
tokenized = nltk.word_tokenize(lines)
nouns = [word for (word, pos) in nltk.pos_tag(tokenized) if is_noun(pos)] 

print (nouns)
