from snownlp import SnowNLP
from snownlp import sentiment

with open('data_list_test_2.txt') as f:
  lines = f.readlines()
  lines
  
for sen in lines:
  s = SnowNLP(sen)
  print(s.sentiments)
  print(s.words)



  
  
