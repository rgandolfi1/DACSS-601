library(tidyverse)
scdbData <- read.delim("scdb.csv", sep = ",", header= TRUE)
head(scdbData)
colnames(scdbData)
ggplot(scdbData, aes(`caseOriginState`)) + geom_bar( )
p <- ggplot(scdbData, aes(`caseOriginState`)) + geom_bar( )       
p + scale_x_continuous(limit = c(0, 64))
      

