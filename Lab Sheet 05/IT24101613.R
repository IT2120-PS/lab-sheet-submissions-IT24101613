setwd("/Users/sawanyakodagoda/Desktop/IT24101613")
Delivery_Times<-read.table("Exercise - Lab 05.txt", header=TRUE)
names(Delivery_Times)<-c("X")
fix(Delivery_Times)
attach(Delivery_Times)

histogram<-hist(X, main="Histogram for delivery times", breaks=seq(20,70,length=10), right=FALSE)


breaks <- round(histogram$breaks)
freq <-histogram$counts
cum.freq <- cumsum(freq)
new<-c()
for(i in 1: length(breaks)) {
	if(i==1) {
		new[i]=0
	} else {
		new[i]=cum.freq[i-1]
	}
}

plot(breaks, new, type='l', main="Cumulative Frequency Polygon for Delivery Times", xlab="Delivery Times", ylab="Cumulative Frequency", ylim=c(0,max(cum.freq)))



