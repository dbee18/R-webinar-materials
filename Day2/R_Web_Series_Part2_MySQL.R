#install.packages("RMySQL")
library(RMySQL)

dbcon = dbConnect(MySQL(), user='root', password='1234', dbname='r_test', host='localhost')

dbListTables(dbcon)

result = dbGetQuery(dbcon, "select * from elantra")
head(result,10)
dbWriteTable(dbcon, value = result, name = "elantra3", append = TRUE )
dbListTables(dbcon)
