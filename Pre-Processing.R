load("cdxzzx.RData")
write.csv(object,file="cdxzzx.csv")
list2 <- data_list[[2]]
library(jiebaR)
library(wordcloud2)
library(rvest)

wk = worker()

list_2 <- wk[list2]
freq1 <- freq(list_2)
typeof(freq1)
freq1
df = data.frame(freq1)
df1 = df[with(df, order(freq, decreasing = TRUE)),]
df1
typeof(list_2)

wordcloud2(data = df1, size = 1.6)

sen = strsplit(data_list[[2]], "，")
sen
write.table(sen, "data_list_test_2.txt")
write.csv(df,file="cdxck.csv")



#sortWord = sort(freq1$freq, decreasing = TRUE)
#sortWord
