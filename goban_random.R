# Plotting part of the python program
x <- scan(file = "go_data.txt", sep = ",")
summary(x)
hist(x, main="Number of stones until 2 are adjascent in a 19x19 goban", breaks=42, xlab="number of stones", ylim=c(0, 700),ylab="number of occurances", las=1, col="blue")
axis(side=1, at=c(2,15,25,35,42), labels=c(2,15,25,35,42))
axis(side=2, at=c(700), labels=c(700),las=1)