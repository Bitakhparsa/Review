B <- 10000
n<- 1000

a<- 1
b <- 0
p <- 0.5


roulette_winnings <-function(n){
  X <- sample(c(1,0), n, replace=TRUE, prob=c(0.5, 0.5))
  mean(X)
}

S <- replicate(B,roulette_winnings(n))

mean(S)
sd(S)


ex_ave <- (a*p+b*(1-p))
ex_ave
se_ave <- sqrt(n)/n*abs(b-a)*sqrt(p*(1-p))
se_ave
