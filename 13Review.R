
library(tidyverse)
library(ggplot2)
library(dslabs)
data("heights")
head(heights)


ci <- c(10,20,30,40,50)
y<- c(1,2,3,2,1)

d <- data.frame(ci , y)
d

avg1 <- mean(y)
avg1


sd1 <- sd(y)
sd1
sd2 <- sqrt(sum((y-avg1)^2)/length(y))
sd2

d %>% ggplot(aes(y))+
  geom_histogram(bins = 30)




x <- heights %>% filter(sex=="Male")
x %>% summarise(m =mean(height) , sd=sd(height))  

x %>% ggplot(aes(height))+
  geom_histogram(bins = 30)


1-pnorm(50,m,sd)
1-pnorm(70,m,sd)
1-pnorm(80,m,sd)
qnorm(0.5,m,sd)
1-pnorm(69.31475,m,sd)

#--------------------------------------------------

y <- heights %>% filter(sex=="Male") %>% pull(height)
m  <- mean(y)
sd <- sd(y)
m
sd

sd_aq1 <- sqrt(mean((y-m)^2))
sd_aq1

n<- length(y)

sd_aq2 <- sd(y)*sqrt((n-1)/n)
sd_aq2

#if size is big then sqrt((n-1)/n)=1


