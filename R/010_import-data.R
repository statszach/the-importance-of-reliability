#Instead of import data, this script holds the code used to write the functions used in the simulation.

#REPEATABILITY SIMULATION FUNCTIONS

repeatability_agreement_likertnorm <- function(r){
  obs = 200000
  data = MASS::mvrnorm(n=obs, mu=c(0, 0), Sigma=matrix(c(1, r, r, 1), nrow=2), empirical=TRUE)
  X = data[, 1]  # standard normal (mu=0, sd=1)
  Y = data[, 2]  # standard normal (mu=0, sd=1)
  
  df <- cbind(X, Y)
  
  df <- as_tibble(df)
  
  prob = c(.1, .2, .4, .2, .1)
  
  df <- df %>% mutate(X_Ordinal = norm2likert(X, prob = prob),
                      Y_Ordinal = norm2likert(Y, prob = prob))
  
  df$D <- df$X_Ordinal - df$Y_Ordinal
  
  df_results <- df %>% count(D)
  
  reliability_absolute_results <- df_results %>% filter(D == 0) 
  reliability_absolute_results
  
  reliability_absolute <- sum(reliability_absolute_results$n)/obs
  reliability_absolute
  
  reliability_approx_results <- df_results %>% filter(between(D, -1, 1)) 
  reliability_approx_results
  
  reliability_approx <- sum(reliability_approx_results$n)/obs
  reliability_approx
  
  reliability_nottrue_results <- df_results %>% filter(!between(D, -1, 1))
  reliability_nottrue_results
  
  reliability_nottrue <- sum(reliability_nottrue_results$n)/obs
  
  diff_results <- c("absolute agreement" = reliability_absolute, "approximate agreement" = reliability_approx,
                    "loose agreement" = reliability_nottrue)

  return(diff_results)
}

repeatability_agreement_likertskew <- function(r){
  obs = 200000
  data = MASS::mvrnorm(n=obs, mu=c(0, 0), Sigma=matrix(c(1, r, r, 1), nrow=2), empirical=TRUE)
  X = data[, 1]  # standard normal (mu=0, sd=1)
  Y = data[, 2]  # standard normal (mu=0, sd=1)
  
  df <- cbind(X, Y)
  
  df <- as_tibble(df)
  
  prob = c(.4, .25, .18, .13, .04)
  
  df <- df %>% mutate(X_Ordinal = norm2likert(X, prob = prob),
                      Y_Ordinal = norm2likert(Y, prob = prob))
  
  df$D <- df$X_Ordinal - df$Y_Ordinal
  
  df_results <- df %>% count(D)
  
  reliability_absolute_results <- df_results %>% filter(D == 0) 
  reliability_absolute_results
  
  reliability_absolute <- sum(reliability_absolute_results$n)/obs
  reliability_absolute
  
  reliability_approx_results <- df_results %>% filter(between(D, -1, 1)) 
  reliability_approx_results
  
  reliability_approx <- sum(reliability_approx_results$n)/obs
  reliability_approx
  
  reliability_nottrue_results <- df_results %>% filter(!between(D, -1, 1))
  reliability_nottrue_results
  
  reliability_nottrue <- sum(reliability_nottrue_results$n)/obs
  
  diff_results <- c("absolute agreement" = reliability_absolute, "approximate agreement" = reliability_approx,
                    "loose agreement" = reliability_nottrue)
  
  return(diff_results)
}

repeatability_agreement_dichot5050 <- function(r){
  obs = 200000
  data = MASS::mvrnorm(n=obs, mu=c(0, 0), Sigma=matrix(c(1, r, r, 1), nrow=2), empirical=TRUE)
  X = data[, 1]  # standard normal (mu=0, sd=1)
  Y = data[, 2]  # standard normal (mu=0, sd=1)
  
  df <- cbind(X, Y)
  
  df <- as_tibble(df)
  
  df <- df %>% transmute_all(~dplyr::if_else(. > 0, 1, 0))
  
  df$D <- df$X - df$Y
  
  df_results <- df %>% count(D)
  
  reliability_absolute_results <- df_results %>% filter(D == 0) 
  reliability_absolute_results
  
  reliability_absolute <- sum(reliability_absolute_results$n)/obs
  reliability_absolute
  
  reliability_approx_results <- df_results %>% filter(between(D, -1, 1)) 
  reliability_approx_results
  
  reliability_approx <- sum(reliability_approx_results$n)/obs
  reliability_approx
  
  reliability_nottrue_results <- df_results %>% filter(!between(D, -1, 1))
  reliability_nottrue_results
  
  reliability_nottrue <- sum(reliability_nottrue_results$n)/obs
  
  diff_results <- c("absolute agreement" = reliability_absolute, "approximate agreement" = reliability_approx,
                    "loose agreement" = reliability_nottrue)
  
  return(diff_results)
}

repeatability_agreement_dichot8020 <- function(r){
  obs = 200000
  data = MASS::mvrnorm(n=obs, mu=c(0, 0), Sigma=matrix(c(1, r, r, 1), nrow=2), empirical=TRUE)
  X = data[, 1]  # standard normal (mu=0, sd=1)
  Y = data[, 2]  # standard normal (mu=0, sd=1)
  
  df <- cbind(X, Y)
  
  df <- as_tibble(df)
  
  df <- df %>% transmute_all(~dplyr::if_else(. > -.84, 1, 0))
  
  df$D <- df$X - df$Y
  
  df_results <- df %>% count(D)
  
  reliability_absolute_results <- df_results %>% filter(D == 0) 
  reliability_absolute_results
  
  reliability_absolute <- sum(reliability_absolute_results$n)/obs
  reliability_absolute
  
  reliability_approx_results <- df_results %>% filter(between(D, -1, 1)) 
  reliability_approx_results
  
  reliability_approx <- sum(reliability_approx_results$n)/obs
  reliability_approx
  
  reliability_nottrue_results <- df_results %>% filter(!between(D, -1, 1))
  reliability_nottrue_results
  
  reliability_nottrue <- sum(reliability_nottrue_results$n)/obs
  
  diff_results <- c("absolute agreement" = reliability_absolute, "approximate agreement" = reliability_approx,
                    "loose agreement" = reliability_nottrue)
  
  return(diff_results)
}


# INTERNAL CONSISTENCY SIMULATION FUNCTIONS


simulate_intconsis_likertnorm <- function(nitems, sva, lambda){
  theta <- rnorm(200000, 0, 1)
  
  SVA_theta <- theta * sva + sqrt((1 - sva^2)) * rnorm(200000, 0, 1)  
  
  iterate <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate)
  
  iterate <- as.data.frame(iterate)
  
  prob_5cat <- c(.1, .2, .4, .2, .1)
  
  test1 <- iterate %>% transmute_all(~norm2likert(., prob = prob_5cat))
  
  omegatest <- omega(test1, plot = F, maxit = 10000, fm = "wls")
  
  result <- c("omega" = omegatest$omega.tot, "alpha" = omegatest$alpha)
  
  return(result)
}


simulate_intconsis_likertskew <- function(nitems, sva, lambda){
  theta <- rnorm(200000, 0, 1)
  
  SVA_theta <- theta * sva + sqrt((1 - sva^2)) * rnorm(200000, 0, 1)  
  
  iterate <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate)
  
  iterate <- as.data.frame(iterate)
  
  prob_5cat <- c(.4, .25, .18, .13, .04)
  
  test1 <- iterate %>% transmute_all(~norm2likert(., prob = prob_5cat))
  
  omegatest <- omega(test1, plot = F, maxit = 10000, fm = "wls")
  
  result <- c("omega" = omegatest$omega.tot, "alpha" = omegatest$alpha)
  
  return(result)
}


simulate_intconsis_dichot5050 <- function(nitems, sva, lambda){
  theta <- rnorm(200000, 0, 1)
  
  SVA_theta <- theta * sva + sqrt((1 - sva^2)) * rnorm(200000, 0, 1)  
  
  iterate <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate)
  
  iterate <- as.data.frame(iterate)
  
  test1 <- iterate %>% transmute_all(~dplyr::if_else(. > 0, 1, 0))
  
  omegatest <- omega(test1, plot = F, maxit = 10000, fm = "wls")
  
  result <- c("omega" = omegatest$omega.tot, "alpha" = omegatest$alpha)
  
  return(result)
}


simulate_intconsis_dichot8020 <- function(nitems, sva, lambda){
  theta <- rnorm(200000, 0, 1)
  
  SVA_theta <- theta * sva + sqrt((1 - sva^2)) * rnorm(200000, 0, 1)  
  
  iterate <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate)
  
  iterate <- as.data.frame(iterate)
  
  test1 <- iterate %>% transmute_all(~dplyr::if_else(. > -.84, 1, 0))
  
  omegatest <- omega(test1, plot = F, maxit = 10000, fm = "wls")
  
  result <- c("omega" = omegatest$omega.tot, "alpha" = omegatest$alpha)
  
  return(result)
}

#The functions below calculate agreement based on the internal consistency simulation.

# 5 items

simulate_agreement_likertnorm_5item <- function(sva, lambda){
  
  nitems = 5
  obs = 200000
  
  theta <- rnorm(200000, 0, 1)
  
  SVA_theta <- theta * sva + sqrt((1 - sva^2)) * rnorm(200000, 0, 1)  
  
  iterate1 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate1)
  
  iterate1 <- as.data.frame(iterate1)
  
  prob_5cat <- c(.1, .2, .4, .2, .1)
  
  test1 <- iterate1 %>% transmute_all(~norm2likert(., prob = prob_5cat))
  
  sum1 <- test1 %>% transmute(sum1 = rowSums(.))
  
  iterate2 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate2)
  
  iterate2 <- as.data.frame(iterate2)
  
  test2 <- iterate2 %>% transmute_all(~norm2likert(., prob = prob_5cat))
  
  sum2 <- test2 %>% transmute(sum2 = rowSums(.))
  
  d_data <- cbind.data.frame(sum1, sum2)
  
  discrepancy_data <- d_data %>% mutate(d = sqrt((sum1-sum2)^2))
  
  reliability_absolute_results <- discrepancy_data %>% filter(d <= 1)
  reliability_absolute <- length(reliability_absolute_results$d)/obs
  reliability_absolute
  
  reliability_approx_results <- discrepancy_data %>% filter(between(d, 2, 4)) 
  reliability_approx <- length(reliability_approx_results$d)/obs
  reliability_approx
  
  reliability_nottrue_results <- discrepancy_data %>% filter(d > 4)
  reliability_nottrue <- length(reliability_nottrue_results$d)/obs
  reliability_nottrue
  
  
  diff_results <- c("absolute agreement" = reliability_absolute, "approximate agreement" = reliability_approx,
                    "loose agreement" = reliability_nottrue)
  return(diff_results)
  
}

simulate_agreement_likertskew_5item <- function(sva, lambda){
  
  nitems = 5
  obs = 200000
  
  theta <- rnorm(200000, 0, 1)
  
  SVA_theta <- theta * sva + sqrt((1 - sva^2)) * rnorm(200000, 0, 1)  
  
  iterate1 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate1)
  
  iterate1 <- as.data.frame(iterate1)
  
  prob_5cat <- c(.4, .25, .18, .13, .04)
  
  test1 <- iterate1 %>% transmute_all(~norm2likert(., prob = prob_5cat))
  
  sum1 <- test1 %>% transmute(sum1 = rowSums(.))
  
  iterate2 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate2)
  
  iterate2 <- as.data.frame(iterate2)
  
  test2 <- iterate2 %>% transmute_all(~norm2likert(., prob = prob_5cat))
  
  sum2 <- test2 %>% transmute(sum2 = rowSums(.))
  
  d_data <- cbind.data.frame(sum1, sum2)
  
  discrepancy_data <- d_data %>% mutate(d = sqrt((sum1-sum2)^2))
  
  reliability_absolute_results <- discrepancy_data %>% filter(d <= 1)
  reliability_absolute <- length(reliability_absolute_results$d)/obs
  reliability_absolute
  
  reliability_approx_results <- discrepancy_data %>% filter(between(d, 2, 4)) 
  reliability_approx <- length(reliability_approx_results$d)/obs
  reliability_approx
  
  reliability_nottrue_results <- discrepancy_data %>% filter(d > 4)
  reliability_nottrue <- length(reliability_nottrue_results$d)/obs
  reliability_nottrue
  
  
  diff_results <- c("absolute agreement" = reliability_absolute, "approximate agreement" = reliability_approx,
                    "loose agreement" = reliability_nottrue)
  return(diff_results)
  
}

simulate_agreement_dichot5050_5item <- function(sva, lambda){
  
  nitems = 5
  obs = 200000
  
  theta <- rnorm(200000, 0, 1)
  
  SVA_theta <- theta * sva + sqrt((1 - sva^2)) * rnorm(200000, 0, 1)  
  
  iterate1 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate1)
  
  iterate1 <- as.data.frame(iterate1)

  test1 <- iterate1 %>% transmute_all(~dplyr::if_else(. > 0, 1, 0))
  
  sum1 <- test1 %>% transmute(sum1 = rowSums(.))
  
  iterate2 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate2)
  
  iterate2 <- as.data.frame(iterate2)
  
  test2 <- iterate2 %>% transmute_all(~dplyr::if_else(. > 0, 1, 0))
  
  sum2 <- test2 %>% transmute(sum2 = rowSums(.))
  
  d_data <- cbind.data.frame(sum1, sum2)
  
  discrepancy_data <- d_data %>% mutate(d = sqrt((sum1-sum2)^2))
  
  reliability_absolute_results <- discrepancy_data %>% filter(d == 0)
  reliability_absolute <- length(reliability_absolute_results$d)/obs
  reliability_absolute
  
  reliability_approx_results <- discrepancy_data %>% filter(between(d, 0, 1)) 
  reliability_approx <- length(reliability_approx_results$d)/obs
  reliability_approx
  
  reliability_nottrue_results <- discrepancy_data %>% filter(d > 1)
  reliability_nottrue <- length(reliability_nottrue_results$d)/obs
  reliability_nottrue  
  
  diff_results <- c("absolute agreement" = reliability_absolute, "approximate agreement" = reliability_approx,
                    "loose agreement" = reliability_nottrue)
  return(diff_results)
  
}

simulate_agreement_dichot8020_5item <- function(sva, lambda){
  
  nitems = 5
  obs = 200000
  
  theta <- rnorm(200000, 0, 1)
  
  SVA_theta <- theta * sva + sqrt((1 - sva^2)) * rnorm(200000, 0, 1)  
  
  iterate1 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate1)
  
  iterate1 <- as.data.frame(iterate1)
  
  test1 <- iterate1 %>% transmute_all(~dplyr::if_else(. > -.84, 1, 0))
  
  sum1 <- test1 %>% transmute(sum1 = rowSums(.))
  
  iterate2 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate2)
  
  iterate2 <- as.data.frame(iterate2)
  
  test2 <- iterate2 %>% transmute_all(~dplyr::if_else(. > -.84, 1, 0))
  
  sum2 <- test2 %>% transmute(sum2 = rowSums(.))
  
  d_data <- cbind.data.frame(sum1, sum2)
  
  discrepancy_data <- d_data %>% mutate(d = sqrt((sum1-sum2)^2))
  
  reliability_absolute_results <- discrepancy_data %>% filter(d == 0)
  reliability_absolute <- length(reliability_absolute_results$d)/obs
  reliability_absolute
  
  reliability_approx_results <- discrepancy_data %>% filter(between(d, 0, 1)) 
  reliability_approx <- length(reliability_approx_results$d)/obs
  reliability_approx
  
  reliability_nottrue_results <- discrepancy_data %>% filter(d > 1)
  reliability_nottrue <- length(reliability_nottrue_results$d)/obs
  reliability_nottrue
  
  
  diff_results <- c("absolute agreement" = reliability_absolute, "approximate agreement" = reliability_approx,
                    "loose agreement" = reliability_nottrue)
  return(diff_results)
  
}

# 10 item

simulate_agreement_likertnorm_10item <- function(sva, lambda){
  
  nitems = 10
  obs = 200000
  
  theta <- rnorm(200000, 0, 1)
  
  SVA_theta <- theta * sva + sqrt((1 - sva^2)) * rnorm(200000, 0, 1)  
  
  iterate1 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate1)
  
  iterate1 <- as.data.frame(iterate1)
  
  prob_5cat <- c(.1, .2, .4, .2, .1)
  
  test1 <- iterate1 %>% transmute_all(~norm2likert(., prob = prob_5cat))
  
  sum1 <- test1 %>% transmute(sum1 = rowSums(.))
  
  iterate2 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate2)
  
  iterate2 <- as.data.frame(iterate2)
  
  test2 <- iterate2 %>% transmute_all(~norm2likert(., prob = prob_5cat))
  
  sum2 <- test2 %>% transmute(sum2 = rowSums(.))
  
  d_data <- cbind.data.frame(sum1, sum2)
  
  discrepancy_data <- d_data %>% mutate(d = sqrt((sum1-sum2)^2))
  
  reliability_absolute_results <- discrepancy_data %>% filter(d <= 3)
  reliability_absolute <- length(reliability_absolute_results$d)/obs
  reliability_absolute
  
  reliability_approx_results <- discrepancy_data %>% filter(between(d, 4, 8)) 
  reliability_approx <- length(reliability_approx_results$d)/obs
  reliability_approx
  
  reliability_nottrue_results <- discrepancy_data %>% filter(d > 8)
  reliability_nottrue <- length(reliability_nottrue_results$d)/obs
  reliability_nottrue
  
  
  diff_results <- c("absolute agreement" = reliability_absolute, "approximate agreement" = reliability_approx,
                    "loose agreement" = reliability_nottrue)
  return(diff_results)
  
}

simulate_agreement_likertskew_10item <- function(sva, lambda){
  
  nitems = 10
  obs = 200000
  
  theta <- rnorm(200000, 0, 1)
  
  SVA_theta <- theta * sva + sqrt((1 - sva^2)) * rnorm(200000, 0, 1)  
  
  iterate1 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate1)
  
  iterate1 <- as.data.frame(iterate1)
  
  prob_5cat <- c(.4, .25, .18, .13, .04)
  
  test1 <- iterate1 %>% transmute_all(~norm2likert(., prob = prob_5cat))
  
  sum1 <- test1 %>% transmute(sum1 = rowSums(.))
  
  iterate2 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate2)
  
  iterate2 <- as.data.frame(iterate2)
  
  test2 <- iterate2 %>% transmute_all(~norm2likert(., prob = prob_5cat))
  
  sum2 <- test2 %>% transmute(sum2 = rowSums(.))
  
  d_data <- cbind.data.frame(sum1, sum2)
  
  discrepancy_data <- d_data %>% mutate(d = sqrt((sum1-sum2)^2))
  
  reliability_absolute_results <- discrepancy_data %>% filter(d <= 3)
  reliability_absolute <- length(reliability_absolute_results$d)/obs
  reliability_absolute
  
  reliability_approx_results <- discrepancy_data %>% filter(between(d, 4, 8)) 
  reliability_approx <- length(reliability_approx_results$d)/obs
  reliability_approx
  
  reliability_nottrue_results <- discrepancy_data %>% filter(d > 8)
  reliability_nottrue <- length(reliability_nottrue_results$d)/obs
  reliability_nottrue
  
  
  diff_results <- c("absolute agreement" = reliability_absolute, "approximate agreement" = reliability_approx,
                    "loose agreement" = reliability_nottrue)
  return(diff_results)
  
}

simulate_agreement_dichot5050_10item <- function(sva, lambda){
  
  nitems = 10
  obs = 200000
  
  theta <- rnorm(200000, 0, 1)
  
  SVA_theta <- theta * sva + sqrt((1 - sva^2)) * rnorm(200000, 0, 1)  
  
  iterate1 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate1)
  
  iterate1 <- as.data.frame(iterate1)
  
  test1 <- iterate1 %>% transmute_all(~dplyr::if_else(. > 0, 1, 0))
  
  sum1 <- test1 %>% transmute(sum1 = rowSums(.))
  
  iterate2 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate2)
  
  iterate2 <- as.data.frame(iterate2)
  
  test2 <- iterate2 %>% transmute_all(~dplyr::if_else(. > 0, 1, 0))
  
  sum2 <- test2 %>% transmute(sum2 = rowSums(.))
  
  d_data <- cbind.data.frame(sum1, sum2)
  
  discrepancy_data <- d_data %>% mutate(d = sqrt((sum1-sum2)^2))
  
  reliability_absolute_results <- discrepancy_data %>% filter(d <= 1)
  reliability_absolute <- length(reliability_absolute_results$d)/obs
  reliability_absolute
  
  reliability_approx_results <- discrepancy_data %>% filter(between(d, 1, 2)) 
  reliability_approx <- length(reliability_approx_results$d)/obs
  reliability_approx
  
  reliability_nottrue_results <- discrepancy_data %>% filter(d > 2)
  reliability_nottrue <- length(reliability_nottrue_results$d)/obs
  reliability_nottrue
  
  
  diff_results <- c("absolute agreement" = reliability_absolute, "approximate agreement" = reliability_approx,
                    "loose agreement" = reliability_nottrue)
  return(diff_results)
  
}

simulate_agreement_dichot8020_10item <- function(sva, lambda){
  
  nitems = 10
  obs = 200000
  
  theta <- rnorm(200000, 0, 1)
  
  SVA_theta <- theta * sva + sqrt((1 - sva^2)) * rnorm(200000, 0, 1)  
  
  iterate1 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate1)
  
  iterate1 <- as.data.frame(iterate1)
  
  test1 <- iterate1 %>% transmute_all(~dplyr::if_else(. > -.84, 1, 0))
  
  sum1 <- test1 %>% transmute(sum1 = rowSums(.))
  
  iterate2 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate2)
  
  iterate2 <- as.data.frame(iterate2)
  
  test2 <- iterate2 %>% transmute_all(~dplyr::if_else(. > -.84, 1, 0))
  
  sum2 <- test2 %>% transmute(sum2 = rowSums(.))
  
  d_data <- cbind.data.frame(sum1, sum2)
  
  discrepancy_data <- d_data %>% mutate(d = sqrt((sum1-sum2)^2))
  
  reliability_absolute_results <- discrepancy_data %>% filter(d <= 1)
  reliability_absolute <- length(reliability_absolute_results$d)/obs
  reliability_absolute
  
  reliability_approx_results <- discrepancy_data %>% filter(between(d, 1, 2)) 
  reliability_approx <- length(reliability_approx_results$d)/obs
  reliability_approx
  
  reliability_nottrue_results <- discrepancy_data %>% filter(d > 2)
  reliability_nottrue <- length(reliability_nottrue_results$d)/obs
  reliability_nottrue  
  
  diff_results <- c("absolute agreement" = reliability_absolute, "approximate agreement" = reliability_approx,
                    "loose agreement" = reliability_nottrue)
  return(diff_results)
  
}

#15 item

simulate_agreement_likertnorm_15item <- function(sva, lambda){
  
  nitems = 15
  obs = 200000
  
  theta <- rnorm(200000, 0, 1)
  
  SVA_theta <- theta * sva + sqrt((1 - sva^2)) * rnorm(200000, 0, 1)  
  
  iterate1 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate1)
  
  iterate1 <- as.data.frame(iterate1)
  
  prob_5cat <- c(.1, .2, .4, .2, .1)
  
  test1 <- iterate1 %>% transmute_all(~norm2likert(., prob = prob_5cat))
  
  sum1 <- test1 %>% transmute(sum1 = rowSums(.))
  
  iterate2 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate2)
  
  iterate2 <- as.data.frame(iterate2)
  
  test2 <- iterate2 %>% transmute_all(~norm2likert(., prob = prob_5cat))
  
  sum2 <- test2 %>% transmute(sum2 = rowSums(.))
  
  d_data <- cbind.data.frame(sum1, sum2)
  
  discrepancy_data <- d_data %>% mutate(d = sqrt((sum1-sum2)^2))
  
  reliability_absolute_results <- discrepancy_data %>% filter(d <= 5)
  reliability_absolute <- length(reliability_absolute_results$d)/obs
  reliability_absolute
  
  reliability_approx_results <- discrepancy_data %>% filter(between(d, 6, 12)) 
  reliability_approx <- length(reliability_approx_results$d)/obs
  reliability_approx
  
  reliability_nottrue_results <- discrepancy_data %>% filter(d > 12)
  reliability_nottrue <- length(reliability_nottrue_results$d)/obs
  reliability_nottrue
  
  
  diff_results <- c("absolute agreement" = reliability_absolute, "approximate agreement" = reliability_approx,
                    "loose agreement" = reliability_nottrue)
  return(diff_results)
  
}

simulate_agreement_likertskew_15item <- function(sva, lambda){
  
  nitems = 15
  obs = 200000
  
  theta <- rnorm(200000, 0, 1)
  
  SVA_theta <- theta * sva + sqrt((1 - sva^2)) * rnorm(200000, 0, 1)  
  
  iterate1 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate1)
  
  iterate1 <- as.data.frame(iterate1)
  
  prob_5cat <- c(.4, .25, .18, .13, .04)
  
  test1 <- iterate1 %>% transmute_all(~norm2likert(., prob = prob_5cat))
  
  sum1 <- test1 %>% transmute(sum1 = rowSums(.))
  
  iterate2 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate2)
  
  iterate2 <- as.data.frame(iterate2)
  
  test2 <- iterate2 %>% transmute_all(~norm2likert(., prob = prob_5cat))
  
  sum2 <- test2 %>% transmute(sum2 = rowSums(.))
  
  d_data <- cbind.data.frame(sum1, sum2)
  
  discrepancy_data <- d_data %>% mutate(d = sqrt((sum1-sum2)^2))
  
  reliability_absolute_results <- discrepancy_data %>% filter(d <= 5)
  reliability_absolute <- length(reliability_absolute_results$d)/obs
  reliability_absolute
  
  reliability_approx_results <- discrepancy_data %>% filter(between(d, 6, 12)) 
  reliability_approx <- length(reliability_approx_results$d)/obs
  reliability_approx
  
  reliability_nottrue_results <- discrepancy_data %>% filter(d > 12)
  reliability_nottrue <- length(reliability_nottrue_results$d)/obs
  reliability_nottrue
  
  diff_results <- c("absolute agreement" = reliability_absolute, "approximate agreement" = reliability_approx,
                    "loose agreement" = reliability_nottrue)
  return(diff_results)
  
}

simulate_agreement_dichot5050_15item <- function(sva, lambda){
  
  nitems = 15
  obs = 200000
  
  theta <- rnorm(200000, 0, 1)
  
  SVA_theta <- theta * sva + sqrt((1 - sva^2)) * rnorm(200000, 0, 1)  
  
  iterate1 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate1)
  
  iterate1 <- as.data.frame(iterate1)
  
  test1 <- iterate1 %>% transmute_all(~dplyr::if_else(. > 0, 1, 0))
  
  sum1 <- test1 %>% transmute(sum1 = rowSums(.))
  
  iterate2 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate2)
  
  iterate2 <- as.data.frame(iterate2)
  
  test2 <- iterate2 %>% transmute_all(~dplyr::if_else(. > 0, 1, 0))
  
  sum2 <- test2 %>% transmute(sum2 = rowSums(.))
  
  d_data <- cbind.data.frame(sum1, sum2)
  
  discrepancy_data <- d_data %>% mutate(d = sqrt((sum1-sum2)^2))
  
  reliability_absolute_results <- discrepancy_data %>% filter(d <= 1.4)
  reliability_absolute <- length(reliability_absolute_results$d)/obs
  reliability_absolute
  
  reliability_approx_results <- discrepancy_data %>% filter(between(d, 1.5, 3)) 
  reliability_approx <- length(reliability_approx_results$d)/obs
  reliability_approx
  
  reliability_nottrue_results <- discrepancy_data %>% filter(d > 3)
  reliability_nottrue <- length(reliability_nottrue_results$d)/obs
  reliability_nottrue
  
  
  diff_results <- c("absolute agreement" = reliability_absolute, "approximate agreement" = reliability_approx,
                    "loose agreement" = reliability_nottrue)
  return(diff_results)
  
}

simulate_agreement_dichot8020_15item <- function(sva, lambda){
  
  nitems = 15
  obs = 200000
  
  theta <- rnorm(200000, 0, 1)
  
  SVA_theta <- theta * sva + sqrt((1 - sva^2)) * rnorm(200000, 0, 1)  
  
  iterate1 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate1)
  
  iterate1 <- as.data.frame(iterate1)
  
  test1 <- iterate1 %>% transmute_all(~dplyr::if_else(. > -.84, 1, 0))
  
  sum1 <- test1 %>% transmute(sum1 = rowSums(.))
  
  iterate2 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate2)
  
  iterate2 <- as.data.frame(iterate2)
  
  test2 <- iterate2 %>% transmute_all(~dplyr::if_else(. > -.84, 1, 0))
  
  sum2 <- test2 %>% transmute(sum2 = rowSums(.))
  
  d_data <- cbind.data.frame(sum1, sum2)
  
  discrepancy_data <- d_data %>% mutate(d = sqrt((sum1-sum2)^2))
  
  reliability_absolute_results <- discrepancy_data %>% filter(d <= 1.4)
  reliability_absolute <- length(reliability_absolute_results$d)/obs
  reliability_absolute
  
  reliability_approx_results <- discrepancy_data %>% filter(between(d, 1.5, 3)) 
  reliability_approx <- length(reliability_approx_results$d)/obs
  reliability_approx
  
  reliability_nottrue_results <- discrepancy_data %>% filter(d > 3)
  reliability_nottrue <- length(reliability_nottrue_results$d)/obs
  reliability_nottrue
  
  diff_results <- c("absolute agreement" = reliability_absolute, "approximate agreement" = reliability_approx,
                    "loose agreement" = reliability_nottrue)
  return(diff_results)
  
}

# 20 items

simulate_agreement_likertnorm_20item <- function(sva, lambda){
  
  nitems = 20
  obs = 200000
  
  theta <- rnorm(200000, 0, 1)
  
  SVA_theta <- theta * sva + sqrt((1 - sva^2)) * rnorm(200000, 0, 1)  
  
  iterate1 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate1)
  
  iterate1 <- as.data.frame(iterate1)
  
  prob_5cat <- c(.1, .2, .4, .2, .1)
  
  test1 <- iterate1 %>% transmute_all(~norm2likert(., prob = prob_5cat))
  
  sum1 <- test1 %>% transmute(sum1 = rowSums(.))
  
  iterate2 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate2)
  
  iterate2 <- as.data.frame(iterate2)
  
  test2 <- iterate2 %>% transmute_all(~norm2likert(., prob = prob_5cat))
  
  sum2 <- test2 %>% transmute(sum2 = rowSums(.))
  
  d_data <- cbind.data.frame(sum1, sum2)
  
  discrepancy_data <- d_data %>% mutate(d = sqrt((sum1-sum2)^2))
  
  reliability_absolute_results <- discrepancy_data %>% filter(d <= 7)
  reliability_absolute <- length(reliability_absolute_results$d)/obs
  reliability_absolute
  
  reliability_approx_results <- discrepancy_data %>% filter(between(d, 8, 16)) 
  reliability_approx <- length(reliability_approx_results$d)/obs
  reliability_approx
  
  reliability_nottrue_results <- discrepancy_data %>% filter(d > 16)
  reliability_nottrue <- length(reliability_nottrue_results$d)/obs
  reliability_nottrue
  
  
  diff_results <- c("absolute agreement" = reliability_absolute, "approximate agreement" = reliability_approx,
                    "loose agreement" = reliability_nottrue)
  return(diff_results)
  
}

simulate_agreement_likertskew_20item <- function(sva, lambda){
  
  nitems = 20
  obs = 200000
  
  theta <- rnorm(200000, 0, 1)
  
  SVA_theta <- theta * sva + sqrt((1 - sva^2)) * rnorm(200000, 0, 1)  
  
  iterate1 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate1)
  
  iterate1 <- as.data.frame(iterate1)
  
  prob_5cat <- c(.4, .25, .18, .13, .04)
  
  test1 <- iterate1 %>% transmute_all(~norm2likert(., prob = prob_5cat))
  
  sum1 <- test1 %>% transmute(sum1 = rowSums(.))
  
  iterate2 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate2)
  
  iterate2 <- as.data.frame(iterate2)
  
  test2 <- iterate2 %>% transmute_all(~norm2likert(., prob = prob_5cat))
  
  sum2 <- test2 %>% transmute(sum2 = rowSums(.))
  
  d_data <- cbind.data.frame(sum1, sum2)
  
  discrepancy_data <- d_data %>% mutate(d = sqrt((sum1-sum2)^2))
  
  reliability_absolute_results <- discrepancy_data %>% filter(d <= 7)
  reliability_absolute <- length(reliability_absolute_results$d)/obs
  reliability_absolute
  
  reliability_approx_results <- discrepancy_data %>% filter(between(d, 8, 16)) 
  reliability_approx <- length(reliability_approx_results$d)/obs
  reliability_approx
  
  reliability_nottrue_results <- discrepancy_data %>% filter(d > 16)
  reliability_nottrue <- length(reliability_nottrue_results$d)/obs
  reliability_nottrue
  
  diff_results <- c("absolute agreement" = reliability_absolute, "approximate agreement" = reliability_approx,
                    "loose agreement" = reliability_nottrue)
  return(diff_results)
  
}

simulate_agreement_dichot5050_20item <- function(sva, lambda){
  
  nitems = 20
  obs = 200000
  
  theta <- rnorm(200000, 0, 1)
  
  SVA_theta <- theta * sva + sqrt((1 - sva^2)) * rnorm(200000, 0, 1)  
  
  iterate1 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate1)
  
  iterate1 <- as.data.frame(iterate1)
  
  test1 <- iterate1 %>% transmute_all(~dplyr::if_else(. > 0, 1, 0))
  
  sum1 <- test1 %>% transmute(sum1 = rowSums(.))
  
  iterate2 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate2)
  
  iterate2 <- as.data.frame(iterate2)
  
  test2 <- iterate2 %>% transmute_all(~dplyr::if_else(. > 0, 1, 0))
  
  sum2 <- test2 %>% transmute(sum2 = rowSums(.))
  
  d_data <- cbind.data.frame(sum1, sum2)
  
  discrepancy_data <- d_data %>% mutate(d = sqrt((sum1-sum2)^2))
  
  reliability_absolute_results <- discrepancy_data %>% filter(d <= 1.8)
  reliability_absolute <- length(reliability_absolute_results$d)/obs
  reliability_absolute
  
  reliability_approx_results <- discrepancy_data %>% filter(between(d, 2, 4)) 
  reliability_approx <- length(reliability_approx_results$d)/obs
  reliability_approx
  
  reliability_nottrue_results <- discrepancy_data %>% filter(d > 4)
  reliability_nottrue <- length(reliability_nottrue_results$d)/obs
  reliability_nottrue
  
  
  diff_results <- c("absolute agreement" = reliability_absolute, "approximate agreement" = reliability_approx,
                    "loose agreement" = reliability_nottrue)
  return(diff_results)
  
}

simulate_agreement_dichot8020_20item <- function(sva, lambda){
  
  nitems = 20
  obs = 200000
  
  theta <- rnorm(200000, 0, 1)
  
  SVA_theta <- theta * sva + sqrt((1 - sva^2)) * rnorm(200000, 0, 1)  
  
  iterate1 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate1)
  
  iterate1 <- as.data.frame(iterate1)
  
  test1 <- iterate1 %>% transmute_all(~dplyr::if_else(. > -.84, 1, 0))
  
  sum1 <- test1 %>% transmute(sum1 = rowSums(.))
  
  iterate2 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate2)
  
  iterate2 <- as.data.frame(iterate2)
  
  test2 <- iterate2 %>% transmute_all(~dplyr::if_else(. > -.84, 1, 0))
  
  sum2 <- test2 %>% transmute(sum2 = rowSums(.))
  
  d_data <- cbind.data.frame(sum1, sum2)
  
  discrepancy_data <- d_data %>% mutate(d = sqrt((sum1-sum2)^2))
  
  reliability_absolute_results <- discrepancy_data %>% filter(d <= 1.8)
  reliability_absolute <- length(reliability_absolute_results$d)/obs
  reliability_absolute
  
  reliability_approx_results <- discrepancy_data %>% filter(between(d, 2, 4)) 
  reliability_approx <- length(reliability_approx_results$d)/obs
  reliability_approx
  
  reliability_nottrue_results <- discrepancy_data %>% filter(d > 4)
  reliability_nottrue <- length(reliability_nottrue_results$d)/obs
  reliability_nottrue
  
  diff_results <- c("absolute agreement" = reliability_absolute, "approximate agreement" = reliability_approx,
                    "loose agreement" = reliability_nottrue)
  return(diff_results)
  
}

#25 item

simulate_agreement_likertnorm_25item <- function(sva, lambda){
  
  nitems = 25
  obs = 200000
  
  theta <- rnorm(200000, 0, 1)
  
  SVA_theta <- theta * sva + sqrt((1 - sva^2)) * rnorm(200000, 0, 1)  
  
  iterate1 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate1)
  
  iterate1 <- as.data.frame(iterate1)
  
  prob_5cat <- c(.1, .2, .4, .2, .1)
  
  test1 <- iterate1 %>% transmute_all(~norm2likert(., prob = prob_5cat))
  
  sum1 <- test1 %>% transmute(sum1 = rowSums(.))
  
  iterate2 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate2)
  
  iterate2 <- as.data.frame(iterate2)
  
  test2 <- iterate2 %>% transmute_all(~norm2likert(., prob = prob_5cat))
  
  sum2 <- test2 %>% transmute(sum2 = rowSums(.))
  
  d_data <- cbind.data.frame(sum1, sum2)
  
  discrepancy_data <- d_data %>% mutate(d = sqrt((sum1-sum2)^2))
  
  reliability_absolute_results <- discrepancy_data %>% filter(d <= 9)
  reliability_absolute <- length(reliability_absolute_results$d)/obs
  reliability_absolute
  
  reliability_approx_results <- discrepancy_data %>% filter(between(d, 10, 20)) 
  reliability_approx <- length(reliability_approx_results$d)/obs
  reliability_approx
  
  reliability_nottrue_results <- discrepancy_data %>% filter(d > 20)
  reliability_nottrue <- length(reliability_nottrue_results$d)/obs
  reliability_nottrue
  
  
  diff_results <- c("absolute agreement" = reliability_absolute, "approximate agreement" = reliability_approx,
                    "loose agreement" = reliability_nottrue)
  return(diff_results)
  
}

simulate_agreement_likertskew_25item <- function(sva, lambda){
  
  nitems = 25
  obs = 200000
  
  theta <- rnorm(200000, 0, 1)
  
  SVA_theta <- theta * sva + sqrt((1 - sva^2)) * rnorm(200000, 0, 1)  
  
  iterate1 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate1)
  
  iterate1 <- as.data.frame(iterate1)
  
  prob_5cat <- c(.4, .25, .18, .13, .04)
  
  test1 <- iterate1 %>% transmute_all(~norm2likert(., prob = prob_5cat))
  
  sum1 <- test1 %>% transmute(sum1 = rowSums(.))
  
  iterate2 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate2)
  
  iterate2 <- as.data.frame(iterate2)
  
  test2 <- iterate2 %>% transmute_all(~norm2likert(., prob = prob_5cat))
  
  sum2 <- test2 %>% transmute(sum2 = rowSums(.))
  
  d_data <- cbind.data.frame(sum1, sum2)
  
  discrepancy_data <- d_data %>% mutate(d = sqrt((sum1-sum2)^2))
  
  reliability_absolute_results <- discrepancy_data %>% filter(d <= 9)
  reliability_absolute <- length(reliability_absolute_results$d)/obs
  reliability_absolute
  
  reliability_approx_results <- discrepancy_data %>% filter(between(d, 10, 20)) 
  reliability_approx <- length(reliability_approx_results$d)/obs
  reliability_approx
  
  reliability_nottrue_results <- discrepancy_data %>% filter(d > 20)
  reliability_nottrue <- length(reliability_nottrue_results$d)/obs
  reliability_nottrue
  
  diff_results <- c("absolute agreement" = reliability_absolute, "approximate agreement" = reliability_approx,
                    "loose agreement" = reliability_nottrue)
  return(diff_results)
  
}

simulate_agreement_dichot5050_25item <- function(sva, lambda){
  
  nitems = 25
  obs = 200000
  
  theta <- rnorm(200000, 0, 1)
  
  SVA_theta <- theta * sva + sqrt((1 - sva^2)) * rnorm(200000, 0, 1)  
  
  iterate1 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate1)
  
  iterate1 <- as.data.frame(iterate1)
  
  test1 <- iterate1 %>% transmute_all(~dplyr::if_else(. > 0, 1, 0))
  
  sum1 <- test1 %>% transmute(sum1 = rowSums(.))
  
  iterate2 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate2)
  
  iterate2 <- as.data.frame(iterate2)
  
  test2 <- iterate2 %>% transmute_all(~dplyr::if_else(. > 0, 1, 0))
  
  sum2 <- test2 %>% transmute(sum2 = rowSums(.))
  
  d_data <- cbind.data.frame(sum1, sum2)
  
  discrepancy_data <- d_data %>% mutate(d = sqrt((sum1-sum2)^2))
  
  reliability_absolute_results <- discrepancy_data %>% filter(d <= 2.25)
  reliability_absolute <- length(reliability_absolute_results$d)/obs
  reliability_absolute
  
  reliability_approx_results <- discrepancy_data %>% filter(between(d, 2.5, 5)) 
  reliability_approx <- length(reliability_approx_results$d)/obs
  reliability_approx
  
  reliability_nottrue_results <- discrepancy_data %>% filter(d > 5)
  reliability_nottrue <- length(reliability_nottrue_results$d)/obs
  reliability_nottrue
  
  
  diff_results <- c("absolute agreement" = reliability_absolute, "approximate agreement" = reliability_approx,
                    "loose agreement" = reliability_nottrue)
  return(diff_results)
  
}

simulate_agreement_dichot8020_25item <- function(sva, lambda){
  
  nitems = 25
  obs = 200000
  
  theta <- rnorm(200000, 0, 1)
  
  SVA_theta <- theta * sva + sqrt((1 - sva^2)) * rnorm(200000, 0, 1)  
  
  iterate1 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate1)
  
  iterate1 <- as.data.frame(iterate1)
  
  test1 <- iterate1 %>% transmute_all(~dplyr::if_else(. > -.84, 1, 0))
  
  sum1 <- test1 %>% transmute(sum1 = rowSums(.))
  
  iterate2 <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate2)
  
  iterate2 <- as.data.frame(iterate2)
  
  test2 <- iterate2 %>% transmute_all(~dplyr::if_else(. > -.84, 1, 0))
  
  sum2 <- test2 %>% transmute(sum2 = rowSums(.))
  
  d_data <- cbind.data.frame(sum1, sum2)
  
  discrepancy_data <- d_data %>% mutate(d = sqrt((sum1-sum2)^2))
  
  reliability_absolute_results <- discrepancy_data %>% filter(d <= 2.25)
  reliability_absolute <- length(reliability_absolute_results$d)/obs
  reliability_absolute
  
  reliability_approx_results <- discrepancy_data %>% filter(between(d, 2.5, 5)) 
  reliability_approx <- length(reliability_approx_results$d)/obs
  reliability_approx
  
  reliability_nottrue_results <- discrepancy_data %>% filter(d > 5)
  reliability_nottrue <- length(reliability_nottrue_results$d)/obs
  reliability_nottrue
  
  diff_results <- c("absolute agreement" = reliability_absolute, "approximate agreement" = reliability_approx,
                    "loose agreement" = reliability_nottrue)
  return(diff_results)
  
}