library(dplyr)
library(countrycode)
library(data.table)
library(googleVis)
setwd("C:/Users/anujs/Stat 385/Data Sets")
data("countrycode_data")

fread("MAR17FRL.csv", sep =  ";")%>%
mutate(Country = countrycode_data$country.name.en[match(Fed, countrycode_data$iso3c)])%>%
group_by(Country)%>%
summarise(count = n())%>%
na.omit()%>%
gvisGeoChart("Country", "count", options=list(region="world", width=600, height=400))%>%
plot()