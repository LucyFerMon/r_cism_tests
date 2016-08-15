# Load the gapminder package
library(gapminder)
# If you got an error on the above line, 
# run the following:
# install.packages('gapminder')

# Create a dataset called df. You will use the 
# gapminder package to get data about countries over time
df <- gapminder

#-----------------
# COMENTARIO DE LUCIA:  perfect
#-----------------

#######################################
# 1. How many rows are in df?
#######################################
dim (gapminder) 1704

#-----------------
# COMENTARIO DE LUCIA:  perfect
#-----------------

#######################################
# 2. How many columns are in df?
#######################################
6
#-----------------
# COMENTARIO DE LUCIA:  perfect
#-----------------

#######################################
# 3. What are the column names of df?
#######################################
head(gapminder)
country continent year lifeExp      pop gdpPercap

#-----------------
# COMENTARIO DE LUCIA:  perfect
#-----------------

#######################################
# 4. What are the different countries in df?
#######################################
# (Hint: use the unique() function)


unique(gapminder$country) 
[1] Afghanistan              Albania                 
[3] Algeria                  Angola                  
[5] Argentina                Australia               
[7] Austria                  Bahrain                 
[9] Bangladesh               Belgium                 
[11] Benin                    Bolivia                 
[13] Bosnia and Herzegovina   Botswana                
[15] Brazil                   Bulgaria                
[17] Burkina Faso             Burundi                 
[19] Cambodia                 Cameroon                
[21] Canada                   Central African Republic
[23] Chad                     Chile                   
[25] China                    Colombia                
[27] Comoros                  Congo, Dem. Rep.        
[29] Congo, Rep.              Costa Rica              
[31] Cote d'Ivoire            Croatia                 
[33] Cuba                     Czech Republic          
[35] Denmark                  Djibouti                
[37] Dominican Republic       Ecuador                 
[39] Egypt                    El Salvador             
[41] Equatorial Guinea        Eritrea                 
[43] Ethiopia                 Finland                 
[45] France                   Gabon                   
[47] Gambia                   Germany                 
[49] Ghana                    Greece                  
[51] Guatemala                Guinea                  
[53] Guinea-Bissau            Haiti                   
[55] Honduras                 Hong Kong, China        
[57] Hungary                  Iceland                 
[59] India                    Indonesia               
[61] Iran                     Iraq                    
[63] Ireland                  Israel                  
[65] Italy                    Jamaica                 
[67] Japan                    Jordan                  
[69] Kenya                    Korea, Dem. Rep.        
[71] Korea, Rep.              Kuwait                  
[73] Lebanon                  Lesotho                 
[75] Liberia                  Libya                   
[77] Madagascar               Malawi                  
[79] Malaysia                 Mali                    
[81] Mauritania               Mauritius               
[83] Mexico                   Mongolia                
[85] Montenegro               Morocco                 
[87] Mozambique               Myanmar                 
[89] Namibia                  Nepal                   
[91] Netherlands              New Zealand             
[93] Nicaragua                Niger                   
[95] Nigeria                  Norway                  
[97] Oman                     Pakistan                
[99] Panama                   Paraguay                
[101] Peru                     Philippines             
[103] Poland                   Portugal                
[105] Puerto Rico              Reunion                 
[107] Romania                  Rwanda                  
[109] Sao Tome and Principe    Saudi Arabia            
[111] Senegal                  Serbia                  
[113] Sierra Leone             Singapore               
[115] Slovak Republic          Slovenia                
[117] Somalia                  South Africa            
[119] Spain                    Sri Lanka               
[121] Sudan                    Swaziland               
[123] Sweden                   Switzerland             
[125] Syria                    Taiwan                  
[127] Tanzania                 Thailand                
[129] Togo                     Trinidad and Tobago     
[131] Tunisia                  Turkey                  
[133] Uganda                   United Kingdom          
[135] United States            Uruguay                 
[137] Venezuela                Vietnam                 
[139] West Bank and Gaza       Yemen, Rep.             
[141] Zambia     

#-----------------
# COMENTARIO DE LUCIA:  perfect
#-----------------


#######################################
# 5. Create in object called df2007.
#    This should be all the observations for which
#    the year was 2007.
#######################################
# (Hint: use the subset() function)#

gapminder,YEAR=="2007")

#-----------------
# COMENTARIO DE LUCIA: what's the meaning of the line above?
#-----------------
df2007<- subset(df,year=="2007")

#-----------------
# COMENTARIO DE LUCIA:  perfect
#-----------------


#######################################
# 6. What was the population of Mozambique in 2007?
#######################################
# (Hint: use the subset() function and the df2007 object)
subset

subset(df2007,country=="Mozambique")
19951656

#-----------------
# COMENTARIO DE LUCIA:  you can do subset(df2007,country=="Mozambique",pop) 
# and the you only get the population data
#-----------------

#######################################
# 7. What was the maximum life expectancy of any country in 2007?
#######################################
# (Hint: use the max() function and the df2007 object)

max(df2007$lifeExp)
82.603

#-----------------
# COMENTARIO DE LUCIA:  perfect
#-----------------


#######################################
# 8. What was the average life expectancy of all countries in 2007?
#######################################
# (Hint: use the mean() function and the df2007 object)

mean(df2007$lifeExp)
67.00742

#-----------------
# COMENTARIO DE LUCIA:  perfect
#-----------------

#######################################
# 9. Create a histogram of the populations of all countries
#    in 2007.
#######################################

hist(df2007$pop)

#-----------------
# COMENTARIO DE LUCIA:  perfect
#-----------------

#######################################
# 10. Create a plot of the relationship between 
#     life expectancy and GDP per capita
#     using only data from 2007
#######################################

plot(df2007$lifeExp,df2007$dfgdpPercap)

#-----------------
# COMENTARIO DE LUCIA:  perfect
#-----------------

#######################################
# 11. Create an object called moz.
#     This will be only those observations for
#     which the country is Mozambique
#######################################
moz<-subset(df,country=="Mozambique")

#-----------------
# COMENTARIO DE LUCIA:  perfect
#-----------------

#######################################
# 12. Make a plot of the year and the life expectancy of Mozambique
#     (x axis = year, y axis = life expectancy)
#######################################
# (Hint: use the moz object)
plot(moz$year, moz$lifeExp)

#-----------------
# COMENTARIO DE LUCIA:  perfect, but try to always give three 
## elements to the graph: title, x-axis and y-axis names
#-----------------

#######################################
# 13. Do the same as number 12, but add
#     a type = 'l' argument to make it a line chart
#     and change the title (main), the x label (xlab)
#     and the y label (ylab).
#     Also change the color of the line (col)
#######################################

plot(moz$year, moz$lifeExp,type = 'l', main= "R mola", xlab="edad", ylab="año", col="purple")

#-----------------
# COMENTARIO DE LUCIA:  perfect. I know que mola mucho!
#-----------------


#######################################
# 14. Make a plot of the year and population of Mozambique
#######################################

plot(moz$year, moz$pop)
#-----------------
# COMENTARIO DE LUCIA:  perfect, but try to always give three 
## elements to the graph: title, x-axis and y-axis names
#-----------------


#######################################
# 15. When you are done with this exercise, 
#     save this script and email it to joebrew@gmail.com
#######################################
