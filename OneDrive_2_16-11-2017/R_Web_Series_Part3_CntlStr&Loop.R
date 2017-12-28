#Control Structures:

#Control statements allow us to control the flow of our programming.
#Causes different things to happen,depending on the values of tests.

#The main control statements are if, else, ifelse and switch.

#The most common test is the if command.
#If something is TRUE, then perform some action;
  ##otherwise, do not perform that action

# set up a variable to hold 1
toCheck <- 1
# if toCheck is equal to 1, print hello
 if(toCheck == 1)
 {
 print("hello")
 }

#Will the below code produce output ?
#now if toCheck is equal to 0, print hello
if(toCheck = 0)
{
 print("hello")
}

############################If- Else#############
x <- 5
if(x == 1)
{
# if the input is equal to 1, print hello
print("hello")
}else
{
# otherwise print goodbye
print("goodbye")
}


###########################Switch################
use.switch <- function(x)
{
  switch(x,"a"="first","b"="second","z"="last","c"="third","other")
}

use.switch("d")

#Knowledge check
use.switch <- function(x)
{
  switch(x,"a"="first","b"="second","z"="last","c"="third","other")
}
z <- "a"
use.switch(z)

########################ifelse#####################
arg <- "Y"
ifelse(arg == "Y", "Yes", "No")

########################Compund Tests#######################

#Sometimes we want to test more than one relationship at a time. 
#The double form (&& or ||) is best used in if
#The single form (& or |) is necessary for ifelse

#The double form compares only one element from each side
#While the single form compares each element of each side.

a <- c(1, 1, 0, 1)
b <- c(2, 1, 0, 1)

# this checks each element of a and each element of b
ifelse(a == 1 & b == 1, "Yes", "No")

# this only checks the first element of a and the first element of b
# it only returns one result
ifelse(a == 1 && b == 1, "Yes", "No")

#######################Loops###########################
##For Loop
#The most commonly used loop is the for loop.
#It iterates over an index-provided as a vector

for(i in 1:10)
{
 print(i)
}

#Knowledge Check:
fruitLength <- nchar(fruit)
# give it names
names(fruitLength) <- fruit
# show it
fruitLength


#NA NA NA
#apple banana pomegranate
#5 6 11
#apple banana pomegranate
#NA NA NA

##################while loop###################
#Less frequently in R than the for. 
#The while loop is just as simple to implement.

x <- 1
while(x <= 5)
{
  print(x)
  x <- x + 1
}

################Controlling Loops############
#When we have to skip to the next iteration of the loop
for(i in 1:10)
{
 if(i == 3)
 {
  next
 }
 print(i)
}

#When we have to completely break out of it.
for(i in 1:10)
{
  if(i == 6)
  {
    break
  }
  print(i)
}


#Knowledge Check
#for(i in 1:6)
#{
#  if(i == 3)
#  {
#    next
#    break
#  }
#  print(i)
#}

#1,2,4,5,6
#Syntax Error
#Compilation Error
#1,2
