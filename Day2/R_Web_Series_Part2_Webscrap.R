#install.packages("rvest")
#Loading the rvest package
library('rvest')

#Specifying the url for desired website to be scrapped
url <- 'http://www.imdb.com/search/title?count=100&release_date=2016,2016&title_type=feature'

#Reading the HTML code from the website
webpage <- read_html(url)


#Using CSS selectors to scrap the title of movies
title_data_html <- html_nodes(webpage,'.lister-item-header a')
#director_data_html <- html_nodes(webpage,'.text-muted+ p a:nth-child(1)')
#.mode-advanced+ .mode-advanced a
#Converting the title data to text
title_data <- html_text(title_data_html)
#title_data <- html_text(director_data_html)

#Let's have a look at the rankings
head(title_data,4)

