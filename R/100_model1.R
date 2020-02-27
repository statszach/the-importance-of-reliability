# rm(list = setdiff(ls(), lsf.str())[!(setdiff(ls(), lsf.str()) %in% 'params')])
# source(here::here('R', '002_folder-paths-and-options.R'))

# Model 1 contains the results for the repeatability conditions

# Normal Likert Simulation:
set.seed(2212020)

r5_ln <- repeatability_agreement_likertnorm(.5)

r5_ln <- r5_ln %>% as_tibble() %>% mutate(r = rep(.5, 1),
                                          type = c("abs", "approx", "loose"))

# absolute agreement approximate agreement       loose agreement 
# 0.36179               0.45781               0.18040 

r6_ln <- repeatability_agreement_likertnorm(.6) 

r6_ln <- r6_ln %>% as_tibble() %>% mutate(r = rep(.6, 1),
                                           type = c("abs", "approx", "loose"))

# absolute agreement approximate agreement       loose agreement 
# 0.398395              0.462165              0.139440 

r7_ln <- repeatability_agreement_likertnorm(.7)

r7_ln <- r7_ln %>% as_tibble() %>% mutate(r = rep(.7, 1),
                                          type = c("abs", "approx", "loose"))

# absolute agreement approximate agreement       loose agreement 
# 0.447795              0.457080              0.095125 

r8_ln <- repeatability_agreement_likertnorm(.8)

r8_ln <- r8_ln %>% as_tibble() %>% mutate(r = rep(.8, 1),
                                                type = c("abs", "approx", "loose"))

# absolute agreement approximate agreement       loose agreement 
# 0.518105              0.433690              0.048205 

r9_ln <- repeatability_agreement_likertnorm(.9)

r9_ln <- r9_ln %>% as_tibble() %>% mutate(r = rep(.9, 1),
                                          type = c("abs", "approx", "loose"))

# absolute agreement approximate agreement       loose agreement 
# 0.635930              0.353925              0.010145 

r_ln <- rbind(r5_ln, r6_ln, r7_ln, r8_ln, r9_ln) %>% as_tibble() %>% mutate(condition = rep("ln", 1))

# Skewed Likert Simulation:

r5_ls <- repeatability_agreement_likertskew(.5)

r5_ls <- r5_ls %>% as_tibble() %>% mutate(r = rep(.5, 1),
                                 type = c("abs", "approx", "loose"))

# absolute agreement approximate agreement       loose agreement 
# 0.395590              0.377815              0.226595 

r6_ls <- repeatability_agreement_likertskew(.6)
r6_ls <- r6_ls %>% as_tibble() %>% mutate(r = rep(.6, 1),
                                          type = c("abs", "approx", "loose"))

# absolute agreement approximate agreement       loose agreement 
# 0.431710              0.382095              0.186195 

r7_ls <- repeatability_agreement_likertskew(.7)
r7_ls <- r7_ls %>% as_tibble() %>% mutate(r = rep(.7, 1),
                                          type = c("abs", "approx", "loose"))

# absolute agreement approximate agreement       loose agreement 
# 0.47594               0.38489               0.13917

r8_ls <- repeatability_agreement_likertskew(.8)
r8_ls <- r8_ls %>% as_tibble() %>% mutate(r = rep(.8, 1),
                                          type = c("abs", "approx", "loose"))


# absolute agreement approximate agreement       loose agreement 
# 0.53667               0.37703               0.08630

r9_ls <- repeatability_agreement_likertskew(.9)
r9_ls <- r9_ls %>% as_tibble() %>% mutate(r = rep(.9, 1),
                                          type = c("abs", "approx", "loose"))


# absolute agreement approximate agreement       loose agreement 
# 0.63335               0.33866               0.02799 

r_ls <- rbind(r5_ls, r6_ls, r7_ls, r8_ls, r9_ls) %>% as_tibble() %>% mutate(condition = rep("ls", 1))

# 5050 Dichot Simulation:

r5_d55 <- repeatability_agreement_dichot5050(.5)
r5_d55 <- r5_d55 %>% as_tibble() %>% mutate(r = rep(.5, 1),
                                          type = c("abs", "approx", "loose"))


# absolute agreement approximate agreement       loose agreement 
# 0.66674               0.33326               0.00000 

r6_d55 <-repeatability_agreement_dichot5050(.6)
r6_d55 <- r6_d55 %>% as_tibble() %>% mutate(r = rep(.6, 1),
                                            type = c("abs", "approx", "loose"))

# absolute agreement approximate agreement       loose agreement 
# 0.704465              0.295535              0.000000 

r7_d55 <-repeatability_agreement_dichot5050(.7)
r7_d55 <- r7_d55 %>% as_tibble() %>% mutate(r = rep(.7, 1),
                                            type = c("abs", "approx", "loose"))

# absolute agreement approximate agreement       loose agreement 
# 0.746375              0.253625              0.000000

r8_d55 <-repeatability_agreement_dichot5050(.8)
r8_d55 <- r8_d55 %>% as_tibble() %>% mutate(r = rep(.8, 1),
                                            type = c("abs", "approx", "loose"))

# absolute agreement approximate agreement       loose agreement 
# 0.793885              0.206115              0.000000 

r9_d55 <-repeatability_agreement_dichot5050(.9)
r9_d55 <- r9_d55 %>% as_tibble() %>% mutate(r = rep(.9, 1),
                                            type = c("abs", "approx", "loose"))

# absolute agreement approximate agreement       loose agreement 
# 0.857275              0.142725              0.000000 

r_d55 <- rbind(r5_d55, r6_d55, r7_d55, r8_d55, r9_d55) %>% as_tibble() %>% mutate(condition = rep("d55", 1))

#8020 Dichot Simulation:

r5_d82 <-repeatability_agreement_dichot8020(.5)
r5_d82 <- r5_d82 %>% as_tibble() %>% mutate(r = rep(.5, 1),
                                            type = c("abs", "approx", "loose"))

# absolute agreement approximate agreement       loose agreement 
# 0.66807               0.33193               0.00000 

r6_d82 <-repeatability_agreement_dichot8020(.6)
r6_d82 <- r6_d82 %>% as_tibble() %>% mutate(r = rep(.6, 1),
                                            type = c("abs", "approx", "loose"))

# absolute agreement approximate agreement       loose agreement 
# 0.70301               0.29699               0.00000 

r7_d82 <-repeatability_agreement_dichot8020(.7)
r7_d82 <- r7_d82 %>% as_tibble() %>% mutate(r = rep(.7, 1),
                                            type = c("abs", "approx", "loose"))

# absolute agreement approximate agreement       loose agreement 
# 0.82588               0.17412               0.00000 

r8_d82 <-repeatability_agreement_dichot8020(.8)
r8_d82 <- r8_d82 %>% as_tibble() %>% mutate(r = rep(.8, 1),
                                            type = c("abs", "approx", "loose"))

# absolute agreement approximate agreement       loose agreement 
# 0.85791               0.14209               0.00000 

r9_d82 <-repeatability_agreement_dichot8020(.9)
r9_d82 <- r9_d82 %>% as_tibble() %>% mutate(r = rep(.9, 1),
                                            type = c("abs", "approx", "loose"))

# absolute agreement approximate agreement       loose agreement 
# 0.89984               0.10016               0.00000

r_d82 <- rbind(r5_d82, r6_d82, r7_d82, r8_d82, r9_d82) %>% as_tibble() %>% mutate(condition = rep("d82", 1))

repeatability_simulation_results <- rbind(r_ln, r_ls, r_d55, r_d82)

saveRDS(repeatability_simulation_results, file = "repeat_agree_results.RData")
