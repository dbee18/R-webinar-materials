# hello world

"hello world"

# Use R as calculator

2+2
1+3-4/0.5
1+(3*5)
7/8
1:20
1:100

seq(1,40)
seq(1,40,5)

# Variable creation and work with Variables

x <- 4
x
class(x)
y = 5

y

xy <- c(1:5)

xy

yz <- c(6:10)

yz

xy + yz

Xy


# Assign a variable

assign("d",12)

d

s <- "hello world"

s

is.character(s)

class(xy)

# Install and Load packages

install.packages("ggplot2") # Download the package from CRAN

?install.packages

library(ggplot2) # Make package available

or 

# List of install packages installed
require(ggplot2) # Make package available

remove.packages("ggplot2") 
# To permanently remove (delete ) the package

# LISTS OF PACKAGES-- (open CRANS)
browseURL("http://cran.r-project.org/web/views/")

# Shows packages that are currently loaded
search() # Shows packages that are currently loaded


data() # shows the dataset inbuild in R

mtcars

# Saving File
