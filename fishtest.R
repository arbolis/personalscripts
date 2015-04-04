library("rvest")
url <- "http://tests.stockfishchess.org/tests"
fishtest_data <- url %>%
  html() %>%
  html_nodes(xpath='/html/body/div/div/div[2]/table[1]') %>%
  html_table()

fishtest_data <- fishtest_data[[1]] 
summary(fishtest_data)
hist(fishtest_data$MNps)
hist(fishtest_data$Cores,xlab="nombre de processeurs",ylab="nombre de machines",breaks=32)