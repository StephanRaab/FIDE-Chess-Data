
#Visualize the data
Magnus_Carlsen <- January[grepl("Carlsen, Magnus", January$Name),] %>%
  mutate(Magnus_Carlsen = Rating)%>%
  select(-Rating, -Country)

dygraphed <- Magnus_Carlsen %>%
  xts(.[,which(colnames(.)!= "Date")],order.by =  .$Date)%>%
  .[,-1]

dygraph(dygraphed, main = "Player's rating over Time") %>%
  dyOptions(drawPoints = TRUE, pointSize = 2, drawGrid = TRUE) %>%
  dyAxis("y", label = "Rating")%>%
  dyRangeSelector()

