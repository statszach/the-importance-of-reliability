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

library(faux)

df <- cbind(X, Y)

df <- as.data.frame(df)

prob = c(.1, .2, .4, .2, .1)

df$x.ordinal <- norm2likert(df$X, prob = prob, mu = 0, sd = 1)
df$y.ordinal <- norm2likert(df$Y, prob = prob, mu = 0, sd = 1)

table(df$x.ordinal)
table(df$y.ordinal)

library(tidyverse)

df.plot <- df %>% select(x.ordinal, y.ordinal)

df.long <- df.plot %>% gather(label, key, x.ordinal:y.ordinal)

ggplot(df.long, aes(x=key, color = label)) + geom_histogram(position = "identity")