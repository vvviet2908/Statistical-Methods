library(mosaic)
compre <- c(60,76,76,90,81,75,95,98,88,73,90,66,91,83,100,85,76,69,91,78)
mean(compre)
n <- length(compre)
resample(compre,replace=TRUE)
mean_each <- do(10000) * mean(resample(compre,replace=TRUE))
histogram(mean_each[["mean"]])
ybar<-mean(mean_each[["mean"]])
ybar

alpha <- 0.05  
s <- sd(mean_each[["mean"]])
s           
mu0=80
ts = (ybar-mu0)/(s/sqrt(n))#test statistic
ts
t.alpha = qt(1-alpha,df=n-1)  #critical value
t.alpha
if (ts > t.alpha) print("reject H0") else print("fail to reject H0")
pval = pt(ts, df=n-1, lower.tail = FALSE)
pval #upper tail p-value
