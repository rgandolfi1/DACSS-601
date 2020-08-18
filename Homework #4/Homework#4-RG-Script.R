library(tidyverse)
scdbData <- read.delim("scdb.csv", sep = ",", header= TRUE)


#variables I used were decisionDirection which refers to wether the case went more liberal or more conservative
#the second one I used was chief which refers to the chief justice assigned to the case

ggplot(scdbData, aes(`decisionDirection`)) + geom_bar( ) 
#The above line is getting the data from the decisiondirection varibale

ggplot(scdbData, aes(`decisionDirection`)) + geom_bar( ) + facet_wrap(vars(`chief`))



ggplot(scdbData, aes(`decisionDirection`,)) + geom_bar( ) + facet_wrap(vars(`chief`)) +labs(title = "Supreme Court Decision by Chief Justice", caption = "Data from http://scdb.wustl.edu/", y = "count", x= "Decision Direction")



#This line of code facet wraps the decisions by court chief justices

#After reading the assignment I went ahead and returned the statistics associated with the "decisionDirection" I dont think these statistical values are helpful with these variables though.
#mean,median,variance and standard deviation are what I felt may help me analyze this data best.
summarize(scdbData, mean.decisionDirection = mean(`decisionDirection`,na.rm = TRUE),summarize(scdbData, median.decisionDirection = median(`decisionDirection`,na.rm = TRUE),summarize(scdbData, var.decisionDirection = var(`decisionDirection`,na.rm = TRUE)),summarize(scdbData, sd.decisionDirection = sd(`decisionDirection`,na.rm = TRUE))))
