# HomeworkOneTemplate.r
# This tells us what this file does
#
# dr 7.31.2020

# Reminder: the # "comments" out a line of text; that is, if you precede a line with "#", 
# then R ignores that line

# =-=-=-=-=-=-=-=-=-=-=-=-
# front end material. 
# =-=-=-=-=-=-=-=-=-=-=-=-

library(tidyverse)

# =-=-=-=-=-=-=-=-=-=-=-=-
# Some quick code reminders 
# =-=-=-=-=-=-=-=-=-=-=-=-

# Here's an example of storing an object.
hello <- paste("Hello World!")

# Look over there -> 
# In the "Environment" window, you'll see that you've created an object that is 
# now stored in your workspace. 

# Now type hello. R "pastes" the line of text that says "Hello World!" as your output.

# Ok, with those reminders out of the way, let's get some data into R

# =-=-=-=-=-=-=-=-=-=-=-=-=-
# Reading in Data
# =-=-=-=-=-=-=-=-=-=-=-=-=-

# What you need to do from here on out is dependent on the dataset 
# you choose to work with! Here's an example of how I'd approach this with
# a file using "+" as a delimiter

myData <- read.delim("plusDelimitedData.txt", sep = "+", header=T)

# let's unpack that a bit. 
# I'm creating an object called myData
# I'm using the read.delim() function to read it in
# I'm specifying the name of the file; it's in my working directory!
# I'm specifying the delimiter (here, "+", but often commas (",") or tabs ("\t")
# I'm specifying that there is a header included in the data that features the variable names

# Now, let's check the first few rows. I'll let you remember how to do that!


#MyWork.r
#This portion of the script contains the updates required for HW1
#
#rg 8.05.2020

library(tidyverse)

#MyWork <- read_excel("covid-responses.tab.xlsx")
#I chose to work with the covid response dataset using the read_excel function

scdbData <- read.delim("scdb.csv", sep = ",", header= TRUE)
#This uses the scdb data in the format read.delim format for my own practice

#I moved the dataset from downloads to my DACSS601 directory to ensure I chose the correct file in my script

#The function to get the first few rows of data is the Head() function.

head(scdbData)


tibblescdb <- as_tibble(scdbData)

as_tibble(tibblescdb)

print(tibblescdb, n=10, width=5)
tibblescdb[1,]
