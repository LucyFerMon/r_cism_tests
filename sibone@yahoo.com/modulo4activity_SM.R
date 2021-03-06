# Load the gapminder package
library(gapminder)
# If you got an error on the above line, 
# run the following:
# install.packages('gapminder')
install.packages("gapminder")
# Create a dataset called df. You will use the 
# gapminder package to get data about countries over time
library(gapminder)
df<- gapminder 
#######################################
# 1. How many rows are in df?
#######################################
dim(df)

#there are 1704 rows#

#######################################
# 2. How many columns are in df?
#######################################

#there are 6 columns

#######################################
# 3. What are the column names of df?
#######################################

names(df)
#"country", "continent", "year","lifeExp", "pop" and "gdpPercap"

#######################################
# 4. What are the different countries in df?
#######################################
# (Hint: use the unique() function)

table (df$country)

#######################################
# 5. Create in object called df2007.
#    This should be all the observations for which
#    the year was 2007.
#######################################
# (Hint: use the subset() function)

table (df$year)
df2007<- subset(df, year == 2007)
#######################################
# 6. What was the population of Mozambique in 2007?
#######################################
# (Hint: use the subset() function and the df2007 object)

subset(df2007, country == "Mozambique")
#the population was 19.951.656 hab"
#######################################
# 7. What was the maximum life expectancy of any country in 2007?
#######################################
# (Hint: use the max() function and the df2007 object)
max(df2007$lifeExp)
#the max life expectancy of any country in 2007 was 82.603
#######################################
# 8. What was the average life expectancy of all countries in 2007?
#######################################
# (Hint: use the mean() function and the df2007 object)
mean(df2007$lifeExp)
#######################################
# 9. Create a histogram of the populations of all countries
#    in 2007.
#######################################
hist(df2007$pop)

#######################################
# 10. Create a plot of the relationship between 
#     life expectancy and GDP per capita
#     using only data from 2007
#######################################
plot(df2007$lifeExp,df2007$gdpPercap)

#######################################
# 11. Create an object called moz.
#     This will be only those observations for
#     which the country is Mozambique
#######################################
moz<-subset (df, country=="Mozambique")


#######################################
# 12. Make a plot of the year and the life expectancy of Mozambique
#     (x axis = year, y axis = life expectancy)
#######################################
# (Hint: use the moz object)
plot (moz$year,moz$lifeExp)

#######################################
# 13. Do the same as number 12, but add
#     a type = 'l' argument to make it a line chart
#     and change the title (main), the x label (xlab)
#     and the y label (ylab).
#     Also change the color of the line (col)
#######################################
plot (moz$year,moz$lifeExp,type = 'l',main = "Life expectancy in Mozambique by years",xlab = "Years", ylab = "Life expectancy", col= "red")

#######################################
# 14. Make a plot of the year and population of Mozambique
#######################################

plot(moz$year,moz$pop)
plot(moz$year,moz$pop,main = "Mozambique population by years",xlab = "Years",ylab = "Pop in millions")

#######################################
# 15. When you are done with this exercise, 
#     save this script and email it to joebrew@gmail.com
#######################################