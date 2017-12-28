#####################R-Part2 Hands-On###########################
#Numeric Data Type

x = 10.5 
x
class(x)
is.numeric(x)
 x1 <- "a"
 is.numeric(x1) 

#Integer Data Type
y = 3L
y = as.integer(3)
y
class(y)
is.integer(y)
is.numeric(y)

as.integer(4.286)
as.integer("5.934")
as.integer(TRUE)

#Logical value

x = TRUE
y = FALSE
x
class(y)
z = x & y
z
z = x | y
z
z = !x
z
class(z)

a=2; b=5
z = a > b
z

z = T
z

class(z)
#Character Data Type

x = "q"
x
x = "bharath"
x
y = "dasa"
paste(x,y)
substr(x,0,3)
sub("b","s","bharath")

#Complex Value
z = 1 + 2i
z
class(z)

#Vector Type
a = c(2,8,9,34)
length(a)
b = c("a","aa","dd")
c1 = c(a,b)
c1
class(c1[3])
##Knowledge Check
a = c(2,8,9,34)
d = c(3.48,8.967,7.24)
e = c(a,d)
e
class(e[4])


#Matrix

a = matrix(c(22, 444, 3333, 11, 555, 7777), nrow=2,ncol=3,byrow = TRUE)        # fill matrix by rows
a
#Knowledge Check
a1 = matrix(c(22, 444, 3333, 11, 555, 7777), nrow=2,ncol=3,byrow = FALSE)
a1
#To access a particular value
a[2,3]   #nth row and mth column

#List

nu1 = c(2, 3, 5) 
ch1 = c("a", "b", "c", "d", "e") 
lo1 = c(TRUE, FALSE, TRUE, FALSE, FALSE) 
li1 = list(nu1, ch1, lo1)   # x contains copies of n, s, b
li1
