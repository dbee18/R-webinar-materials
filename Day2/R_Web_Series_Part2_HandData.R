
 #####################################
data()
class(iris) 
# https://en.wikipedia.org/wiki/Iris_flower_data_set
str(iris)
head(iris) 
# Looking at data 
# 10 rows of data
head(iris , 10) 

# Last 10 rows of data
tail(iris , 10)

# variable names
names(iris) 
# number of rows
nrow(iris)
# number of colomns
ncol(iris)
NCOL(iris)
NROW(iris)
x <- c(1,2,3,4,5,6)
nrow(x)
NROW(x)
range(x)
# Species is a factor
range(iris$Species) 
# Sepal.Width is numeric
range(iris$Sepal.Width) 
# Identify rows
iris[12,]  
# Multiple rows
iris[12:15,] 
# Selecting Columns
iris[,5] 
# Selecting multiple Columns
iris[,2:5] 
iris[,c(2,4:5)]

iris_new <- data.frame(iris, stringsAsFactors = FALSE)
class(iris_new$Species)
# List of files
list.files() 

# Picking up column
iris$Sepal.Width

iris[["Species"]] # picking up colomns

# Names

names(iris)
names(iris)[3]

rownames(iris)
rownames(iris)[3]

# creating the dataframe
da <- iris[1:3,]
da
rownames(da) <- c("one","two","three") # rename
da
# remove the row name
rownames(da) <- NULL 
da

library(plyr)
re <- rename(da,c("Species" = "Species1" ))
names(re)
colnames(da)[5] <- "Spec"
da
# Dates and Times 
# Jan 1st ,1970 12:00AM

# DATES AND TIMES

Sys.Date() #  Current date

Sys.time() # Current time
# Adding as sec
Sys.time() + 1 
# Adding hour
Sys.time() + 3600 
Sys.time() + 300
class(Sys.Date())
class(Sys.time())
POSIXct
# Future dates
Sys.Date() + 1:10 
Sys.Date() + 10:1
# Past dates
Sys.Date() - 1:10 
dates <- Sys.Date() + 1:10
months(dates)
weekdays(dates)

time1 <- Sys.time() 
time2 <- Sys.time() + 600
time1-time2
difftime(time2,time1)
difftime(time2,time1, units = 'days') 
difftime(time2,time1, units = 'hours') 
as.numeric(difftime(time2,time1, units = 'hours'))

# Missing values / NA's

x <- c(1,2,3,4,NA,5,NA,7,NA,8)
x == NA
is.na(x)
!is.na(x)
table(is.na(x))
sum(x)
summary(iris)
dimnames(da)

names(iris)

class(Salaries)

install.packages("data.table")
library(data.table)
salaries = as.data.table(Salaries)
salaries[lgID == "AL", ]
names(Salaries)
head(salaries)
# Group by
salaries[lgID == "AL" & yearID >= 1990, ]

salaries.filtered = salaries[lgID == "AL" & yearID >= 1990, ]

summarized.year = salaries[, mean(salary), by="yearID"]
head(summarized.year)

summarized.year = salaries[, list(Average=mean(salary)), 
                           by="yearID"]
head(summarized.year)


summarized.year = salaries[, list(Average=mean(salary), Maximum=max(salary)), 
                           by="yearID"]
head(summarized.year)

summarized.lg = salaries[, list(Average=mean(salary), Maximum=max(salary)), 
                         by="lgID"]
head(summarized.lg)

# Subset
newdata <- subset(salaries , salary >= 1090000,select = 
                    c("lgID","playerID","salary"))

head(newdata)












###################################################
Arithmetic Operators
2^3
4^2

# %% Modulus (Remainder from division)
5 %%2
6%%3
5%%2

8

9/2.3
9 %/%2.3 # Flour division / Integer Division
16%/%2
1234%/%34

Assignment Operators

##  <-, <<-, =	Leftwards assignment

X <- 12
X <<- 123

## ->, ->>	Rightwards assignment

125 -> X
X
1234->> X

f ->> 12

Relational Operators

# <	Less than
# >	Greater than
# <=	Less than or equal to
# >=	Greater than or equal to
# ==	Equal to
# !=	Not equal to

5 <9
9>8
9<=9
9==8
9!=8
##Logical Operators

## !	Logical NOT
## &	Element-wise logical AND
## &&	Logical AND
## |	Element-wise logical OR
## ||	Logical OR

x <- c(0,0,TRUE,2,4)
y <- c(1,0,TRUE,2,9)

x|y



# Special Operators
# :
# %n% -- This operator is used if an elements belongs to an vector

