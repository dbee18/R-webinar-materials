# HOW FUNCTIONS WORK
# A function is a set of statements organized together to perform a specific task. 
#####
func_name <- function (argument1,argument2) {
  statement
}

#############
say.hello <- function()
{
  "hello world!"
}

# CALLING THE FUNCTION
say.hello
say.hello()

sprintf( " hello %s","sutirtha")
sprintf("hello %s , today is %s", "sutirtha","monday")

hello.man <- function(name)
{
  print(sprintf("hello %s",name))
}

hello.man("sutirtha")
hello.man("bharath")
 
# Different function

hello.man <- function(first , second)
{
  print(sprintf("Hello %s %s" , first,second))
}

hello.man("sutirtha" , "malakar")

###
hello.man <- function(second , first)
{
  print(sprintf("Hello %s %s" , first,second))
}

hello.man("sutirtha" , "malakar")

# IF IN FUNCTION

chek == 1

check.value <- function(x)
{
  if (x ==1 )
  print("correct")
}

check.value(chek)

## Return multiple variables

fun_multiple <- function(x,y)
{
  if(is.numeric(x)&is.numeric(y))
  {return(c(x+y,x/y,x*y))}
}
  
fun_multiple(3,4)

fun_multiple <- function(x,y)
{
  if(is.numeric(x)&is.numeric(y))
  {return(c(x+y,x/y,x*y))}
  else {
    print("not a number")
  }
}

fun_multiple(3,"y")

vec1<- c(1:5)
vec2 <- c(3:7)
fun_multiple(vec1,vec2)

# if you want to see the function 
fun_multiple

# Checking with Vector

## ifelse(test_expression,x,y)

vec <- c(1:8)
ifelse (vec == 1 , "yes","No")

# checking two vectors
a <- c(1,2,3,4,5)
b <- c(4,5,3,7,8)
ifelse(a==b , "tr","ff")

# switch

use.switch <- function(x)
{
  switch(x,
         "a" = "one",
         "b" = "two",
         "c" = "three",)
  
}

use.switch("a")

# APPLY
# apply() function applies a function to margins of an array or matrix.

mx_iris <- iris[,1:4]
apply(mx_iris , 2,FUN=max)

apply(mx_iris , 2,FUN=min)
apply(mx_iris , 2,FUN=range)

apply(mx_iris , 2,FUN=sd)

iris_split <- split(iris , iris$Species)

lapply(iris_split,summary)

sapply(mx_iris,summary , simplify = T)

# How many apply there in R
??base::apply

## AGGREGATE
names(iris1)
aggregate(price ~ cut, diamonds , mean)
aggregate(price ~ cut, diamonds , sum)

aggregate(price ~ cut + color, diamonds , mean)
aggregate(price ~ cut + color, diamonds , sd)

aggregate(cbind(price , carat)~ cut , diamonds , mean)


