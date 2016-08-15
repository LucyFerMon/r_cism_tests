# Load the gapminder package
install.packages('gapminder')
library(gapminder)
# If you got an error on the above line, 
# run the following:
# install.packages('gapminder')

# Create a dataset called df. You will use the 
# gapminder package to get data about countries over time
df <- gapminder

#######################################
# 1. How many rows are in df?
#######################################
dim(df)
dim(gapminder)[1]

#--------------------------------------
# COMENTARIO DE LUCIA: PERFECT
#--------------------------------------
#######################################
# 2. How many columns are in df?
#######################################
dim(df)
dim(gapminder)[2]

#--------------------------------------
# COMENTARIO DE LUCIA: PERFECT
#--------------------------------------
#######################################
# 3. What are the column names of df?
#######################################
head(gapminder)
names(df)

#--------------------------------------
# COMENTARIO DE LUCIA: You don't need head(), names is sufficient
#--------------------------------------
#######################################
# 4. What are the different countries in df?
#######################################
# (Hint: use the unique() function)

unique(df$country)

#--------------------------------------
# COMENTARIO DE LUCIA: Perfect
#--------------------------------------
#######################################
# 5. Create in object called df2007.
#    This should be all the observations for which
#    the year was 2007.
#######################################
# (Hint: use the subset() function)
df2007 <- subset(df, df$year=="2007",)

#--------------------------------------
# COMENTARIO DE LUCIA: you should remove the last comma
#--------------------------------------

#######################################
# 6. What was the population of Mozambique in 2007?
#######################################
# (Hint: use the subset() function and the df2007 object)
dfmoz2007 <- subset(df, df$year=="2007" & df$country=="Mozambique",)

#--------------------------------------
# COMENTARIO DE LUCIA: you should remove the last comma
#--------------------------------------

#######################################
# 7. What was the maximum life expectancy of any country in 2007?
#######################################
# (Hint: use the max() function and the df2007 object)
max(df2007$lifeExp)

#--------------------------------------
# COMENTARIO DE LUCIA: perfect
#--------------------------------------

#######################################
# 8. What was the average life expectancy of all countries in 2007?
#######################################
# (Hint: use the mean() function and the df2007 object)
mean(df2007$lifeExp)

#--------------------------------------
# COMENTARIO DE LUCIA: perfect
#--------------------------------------

#######################################
# 9. Create a histogram of the populations of all countries
#    in 2007.
#######################################

hist(df2007$pop)
hist()

#--------------------------------------
# COMENTARIO DE LUCIA: the hist() will not create anything as it is empy
#--------------------------------------

#######################################
# 10. Create a plot of the relationship between 
#     life expectancy and GDP per capita
#     using only data from 2007
#######################################

plot(df2007$lifeExp, df2007$gdpPercap)

#--------------------------------------
# COMENTARIO DE LUCIA: perfect
#--------------------------------------

#######################################
# 11. Create an object called moz.
#     This will be only those observations for
#     which the country is Mozambique
#######################################


moz <- subset(df, df$country=="Mozambique",)

#--------------------------------------
# COMENTARIO DE LUCIA: perfect
#--------------------------------------

#######################################
# 12. Make a plot of the year and the life expectancy of Mozambique
#     (x axis = year, y axis = life expectancy)
#######################################
# (Hint: use the moz object)
plot(moz$year, moz$lifeExp , xlab = 'Year', ylab = 'LifeExp')

#--------------------------------------
# COMENTARIO DE LUCIA: perfect
#--------------------------------------

#######################################
# 13. Do the same as number 12, but add
#     a type = 'l' argument to make it a line chart
#     and change the title (main), the x label (xlab)
#     and the y label (ylab).
#     Also change the color of the line (col)
#######################################

plot(moz$year, moz$lifeExp , xlab = 'Year', ylab = 'LifeExp', type = "h")

#--------------------------------------
# COMENTARIO DE LUCIA: the line should be of type="l" not type="h
#--------------------------------------


#######################################
# 14. Make a plot of the year and population of Mozambique
#######################################
plot(moz$year, moz$pop,xlab = 'Year', ylab = 'pop')

#--------------------------------------
# COMENTARIO DE LUCIA: perfect
#--------------------------------------


#######################################
# 15. When you are done with this exercise, 
#     save this script and email it to joebrew@gmail.com
#######################################
