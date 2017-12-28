#We read the data from a csv file.
#We use the argument stringsAsFactors = FALSE to make sure the values are considered to
##be characters not as a factors.
###To know more about factors refer https://www.stat.berkeley.edu/classes/s133/factors.html
tweets = read.csv("C:/AI_Related/Workshop_Related/Sentiment_Analytics/tweets.csv",stringsAsFactors=FALSE)
View(tweets)
#Let us try to understand the sturcture of the dataset,like no of observation,no of 
##variables a sample set of variables.
str(tweets)

write.csv(tweets,file = "C:/AI_Related/DataSet/output1.csv") 
