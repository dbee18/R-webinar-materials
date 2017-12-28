#install.packages("foreign")

library('foreign')

setwd("C:/AI_Related/DataSet/")

getwd()

data()
View(Orange)
O_count<-Orange$Tree
O_age<-Orange$age
O_circumference<-Orange$circumference

save(O_count, O_age, O_circumference, file = "output.rda")

rm(O_count, O_age, O_circumference)
load(file = "output.rda")
