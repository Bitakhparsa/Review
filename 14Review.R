n <- 1000

X <- sample(c(-1,1), n, replace=TRUE, prob=c(9/19, 10/19))

sum(X<0)
mean(X<0)
sd(X<0)


B <- 10000
roulette_winnings <-function(n){
  X <- sample(c(-1,1), n, replace=TRUE, prob=c(9/19, 10/19))
  sum(X)
}

S <- replicate(B,roulette_winnings(n))
S
mean(S<0)

density(S)

hist(S)



 s <- seq(min(S), max(S), length = 100)    # sequence of 100 values across range of S
normal_density <- data.frame(s = s, f = dnorm(s, mean(S), sd(S))) # generate normal density for S
data.frame (S = S) %>%    # make data frame of S for histogram
  ggplot(aes(S, ..density..)) +
  geom_histogram(color = "black", binwidth = 10)
#---------

n <- 10000000
X <- sample(c(-1,1), n, replace=TRUE, prob=c(9/19, 10/19))

a<- -1
b <- 1
p <- 9/19

ex <- a*p+b*(1-p)
ex
se<- abs(b-a)*sqrt(p*(1-p))
se


mean(X)
sd(X)

sd(X)*sqrt((n-1)/n)

#_________________________________

B <- 10000
n<- 1000
roulette_winnings <-function(n){
  X <- sample(c(-1,1), n, replace=TRUE, prob=c(9/19, 10/19))
  sum(X)
}

S <- replicate(B,roulette_winnings(n))


mean(S)
sd(S)


ex_sum <- n*(a*p+b*(1-p))
ex_sum
se_sum <- sqrt(n)*abs(b-a)*sqrt(p*(1-p))
se_sum
#__________________________________________

B <- 10000
n<- 1000
roulette_winnings <-function(n){
  X <- sample(c(-1,1), n, replace=TRUE, prob=c(9/19, 10/19))
  mean(X)
}

S <- replicate(B,roulette_winnings(n))

mean(S)
sd(S)


ex_ave <- (a*p+b*(1-p))
ex_ave
se_ave <- sqrt(n)/n*abs(b-a)*sqrt(p*(1-p))
se_ave

