setwd("//Users//sawanyakodagoda//Desktop//IT24101613")
data<- read.table("Exercise - LaptopsWeights.txt", header=TRUE)
fix(data)
attach(data)

names(data)<-c("Weight")
attach(data)

popmn<-mean(Weight)
popmn
pop_sd<-sd(Weight)
pop_sd

samples<-c()
n<-c()

for (i in 1:25){
  s<-sample(Weight,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}

colnames(samples)=n

s.means<-apply(samples,2,mean)
s.means
s.sds<-apply(samples,2,sd)
s.sds

samplemean<-mean(s.means)
samplesd<-sd(s.means)

popmn
samplemean

true_sd<-pop_sd/sqrt(6)
true_sd
samplesd
