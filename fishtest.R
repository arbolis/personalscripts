library("rvest")
url <- "http://tests.stockfishchess.org/tests"
fishtest_data <- url %>%
  html() %>%
  html_nodes(xpath='/html/body/div/div/div[2]/table[1]') %>%
  html_table()

fishtest_data <- fishtest_data[[1]] 
summary(fishtest_data)
hist(fishtest_data$MNps,breaks=15,xlab="Mnps",ylab="nombre de machines",las=1, col="purple")
axis(side=2, at=c(1,2,3,4,5,6,7,8,9,10), labels=c(1,2,3,4,5,6,7,8,9,10),las=1)

hist(fishtest_data$Cores,main="Histogramme de fishtest",xlab="nombre de processeurs",breaks=32, ylab="nombre de machines",col="lightblue",las=1)
axis(side=1, at=c(1,2,3,4,7,11,23,31), labels=c(1,2,3,4,7,11,23,31))
axis(side=2, at=c(1,2,3,4,5,6,7,16,17,23,25), labels=c(1,2,3,4,5,6,7,16,17,23,25),las=1)