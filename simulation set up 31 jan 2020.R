# 1. Generate theta

theta <- rnorm(200000, 0, 1)

# 2. Generate structural validity adjusted-theta

SVA_theta <- theta * 0.80 + sqrt((1 - 0.80^2)) * rnorm(200000, 0, 1)

cor(theta, SVA_theta)

# 3. Generate U*

Ustar1 <- SVA_theta * 0.50 + sqrt((1-0.50^2)) * rnorm(200000, 0, 1)
Ustar2 <- SVA_theta * 0.50 + sqrt((1-0.50^2)) * rnorm(200000, 0, 1)
Ustar3 <- SVA_theta * 0.50 + sqrt((1-0.50^2)) * rnorm(200000, 0, 1)

cor(Ustar1, Ustar2)
n<-8
iterate <- map(1:n, ~SVA_theta * 0.50 + sqrt((1-0.50^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:n])
bind_rows(iterate)

iterate <- as.data.frame(iterate)



simulate_intconsis <- function(nitems, sva, lambda){
  theta <- rnorm(200000, 0, 1)

  SVA_theta <- theta * sva + sqrt((1 - sva^2)) * rnorm(200000, 0, 1)  
  
  iterate <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate)
  
  iterate <- as.data.frame(iterate)
  
    
}


test1 <- simulate_intconsis(10, .8, .5)
prob_5cat   <- c(.1, .2, .4, .2, .1)


test2 <- mutate_all(test1, norm2likert(~., prob = prob_5cat))


# 4. Combine into data frame

iterate.df <- data.frame(matrix(unlist(iterate), nrow=length(iterate), byrow = T))


sva.8_ustar.5 <- as.data.frame(cbind(Ustar1, Ustar2, Ustar3))



# 5. Chunk into 5-point likert



five_cat         <- sva.8_ustar.5 %>% mutate(V1 = norm2likert(Ustar1, prob = prob_5cat),
                                             V2 = norm2likert(Ustar2, prob = prob_5cat),
                                             V3 = norm2likert(Ustar3, prob = prob_5cat))

five_cat_chunk <- five_cat %>% select(V1, V2, V3)

alpha(five_cat_chunk)

omega(five_cat_chunk)

library(lavaan)