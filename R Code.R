#########################################################################
## Learning to generate two variables with a pre-specified correlation ##
#########################################################################

#code pulled from stackexchange here:
# https://stats.stackexchange.com/questions/83172/generate-two-variables-with-precise-pre-specified-correlation?noredirect=1&lq=1

samples = 200
r = 0.83

library(MASS)
data = mvrnorm(n=samples, mu=c(0, 0), Sigma=matrix(c(1, r, r, 1), nrow=2), empirical=TRUE)
X = data[, 1]  # standard normal (mu=0, sd=1)
Y = data[, 2]  # standard normal (mu=0, sd=1)

cor.test(X, Y)

