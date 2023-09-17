###############################
#Jiordani Etienne
#2/6/2023
#HW1
##############################

#Task 1

#A delimiter is a character that seperates variables

#summary() acts differently with different objects because objects have different classes

#The difference between install.packages('package_name') and library(package_name) is that install.packages('package_name') installs a package that you named from CRAN and library(package_name) just enables the installed package

#A dataframe is 2 dimensional heterogenous data. A list can have a dataframe, but are 1 dimensional and have any r-object

#Task 2

#Read in yeast dataset using tidyverse

yeast <- read_csv('jretienn_yeast.csv')

#Summary of erl column

summary(yeast$erl)

#Mean is .502

#Create a character vector for cols
cols <- c('LIVER_BIG','HISTOLOGY', 'MALAISE', 'ASCITES', 'SPIDERS', 'AGE')

#Read in hepatits and assign column names
hepatitis <- read_tsv(('jretienn_hepatitis.tsv'), col_names = c('LIVER_BIG','HISTOLOGY', 'MALAISE', 'ASCITES', 'SPIDERS', 'AGE'))

# 3

#Read in glass
glass <- read_xlsx('jretienn_glass.xlsx')

#Only display Fe and Id
glass[,2:3]

help(order)

#Order Fe from least to greatest
order(glass$Fe,decreasing = FALSE)
# Numbers in first column  1   2   3   4   5   6   8   9  10  11  13  14  15  16  21  23  24 

# 4

#Make sequence from 8-64 in 2 steps
skip <- seq(from = 8, to = 64, by = 2)

#5

#Add 17 to skip
skip + 17

#6

#Make skip repeat
help(rep.int)
Repeat <- rep(skip, times = 8)

#7

#Make skip elements repeat
elementRepeat <- rep(skip, each = 8)

#8 

#Add Repeat and elementRepeat vectors
Repeat + elementRepeat

#R adds each vector corresponding to the position (1st element, 2nd element etc.) and puts them as an element

#9

#Make a vector

a <- c('a1', 'a2')

#Make b vector

b <- c('b1', 'b2')

#Make c vector

c <- c('c1', 'c2', 'c3')

#Make all combinations of vectors

comboabc <- expand.grid(a,b,c)

#10

#Use structure
str(comboabc)
#The common data structure for the object is a datafame