library(dplyr)

setwd("~/group_challenges/project1/Database\ Files/")

#linear regression
Mydata1 <- read.csv(file='OnlineNewsPopularity.csv',check.names=F,stringsAsFactors = F)
model1<- lm( rate_positive_words ~ shares, data = Mydata1)
model2<- lm( rate_negative_words ~ shares, data = Mydata1)
model3<- lm( avg_positive_polarity ~ shares, data = Mydata1)
model4<- lm( max_positive_polarity ~ shares, data = Mydata1)

summary(model1)
summary(model2)
summary(model3)
summary(model4)

#deliverable 2 statistics of data results
Total_summary <- read.csv(file='OnlineNewsPopularity.csv',check.names=F,stringsAsFactors = F)

mean1 <- mean(Total_summary$rate_positive_words)
var1 <- var(Total_summary$rate_positive_words)
sd1 <- sd(Total_summary$rate_positive_words)
median1 <- median(Total_summary$rate_positive_words)
summary <- c(mean1,median1,var1,sd1)

mean2 <- mean(Total_summary$rate_negative_words)
var2 <- var(Total_summary$rate_negative_words)
sd2 <- sd(Total_summary$rate_negative_words)
median2 <- median(Total_summary$rate_negative_words)
summary2 <- c(mean2,median2,var2,sd2)

mean3 <- mean(Total_summary$avg_positive_polarity)
var3 <- var(Total_summary$avg_positive_polarity)
sd3 <- sd(Total_summary$avg_positive_polarity)
median3 <- median(Total_summary$avg_positive_polarity)
summary3 <- c(mean3,median3,var3,sd3)


total_summary= rbind(summary)
total_summary2= rbind(summary2)
total_summary3= rbind(summary3)


t.test(rnorm(total_summary))
t.test(rnorm(total_summary2))
t.test(rnorm(total_summary3))
