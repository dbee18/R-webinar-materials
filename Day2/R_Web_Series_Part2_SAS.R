install.packages("sas7bdat")

library('sas7bdat')

setwd("C:/AI_Related/DataSet/")

getwd()

data = read.sas7bdat("accidents.sas7bdat",debug = FALSE)
View(data)
