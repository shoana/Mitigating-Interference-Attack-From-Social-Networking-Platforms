import nltk
import json
import numpy as np
import pandas as pd
from pandas.io.json import json_normalize
from nltk.tag import pos_tag
from nltk import word_tokenize

with open('Data/message_1.json') as json_data:
  data = json.load(json_data)
df = pd.DataFrame.from_dict(data['messages'])
#extracting just the message content
df3 = pd.DataFrame.from_dict(df['content'])

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

#sports
sports = np.array(["soccer", "basketball", "tennis", "baseball", "golf", "running", "volleyball", "badminton", "swimming", "boxing", "rugby", "football", "cricket", "hockey", "racing", "surf", "karate", "skiing", "snowboarding", "archery", "ice skating"])
founds = np.array(list(filter(lambda x: x in sports, nouns)))
print(founds)

#most occured words (top 3)
from collections import Counter
most_common_words= [word for word, word_count in Counter(nouns).most_common(3)]
print(most_common_words)

#print(nouns)
