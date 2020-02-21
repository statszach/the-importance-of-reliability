# rm(list = setdiff(ls(), lsf.str())[!(setdiff(ls(), lsf.str()) %in% 'params')])
# source(here::here('R', '002_folder-paths-and-options.R'))

# Model 1 contains the results for the repeatability conditions

# Normal Likert Simulation:
set.seed(2212020)

repeatability_agreement_likertnorm(.5)

# absolute agreement approximate agreement       loose agreement 
# 0.36179               0.45781               0.18040 

repeatability_agreement_likertnorm(.6)

# absolute agreement approximate agreement       loose agreement 
# 0.398395              0.462165              0.139440 

repeatability_agreement_likertnorm(.7)

# absolute agreement approximate agreement       loose agreement 
# 0.447795              0.457080              0.095125 

repeatability_agreement_likertnorm(.8)

# absolute agreement approximate agreement       loose agreement 
# 0.518105              0.433690              0.048205 

repeatability_agreement_likertnorm(.9)

# absolute agreement approximate agreement       loose agreement 
# 0.635930              0.353925              0.010145 

# Skewed Likert Simulation:

repeatability_agreement_likertskew(.5)

# absolute agreement approximate agreement       loose agreement 
# 0.395590              0.377815              0.226595 

repeatability_agreement_likertskew(.6)

# absolute agreement approximate agreement       loose agreement 
# 0.431710              0.382095              0.186195 

repeatability_agreement_likertskew(.7)

# absolute agreement approximate agreement       loose agreement 
# 0.47594               0.38489               0.13917

repeatability_agreement_likertskew(.8)

# absolute agreement approximate agreement       loose agreement 
# 0.53667               0.37703               0.08630

repeatability_agreement_likertskew(.9)

# absolute agreement approximate agreement       loose agreement 
# 0.63335               0.33866               0.02799 

# 5050 Dichot Simulation:

repeatability_agreement_dichot5050(.5)

# absolute agreement approximate agreement       loose agreement 
# 0.66669               0.33331               0.00000 

repeatability_agreement_dichot5050(.6)

# absolute agreement approximate agreement       loose agreement 
# 0.70488               0.29512               0.00000 

repeatability_agreement_dichot5050(.7)

# absolute agreement approximate agreement       loose agreement 
# 0.74745               0.25255               0.00000

repeatability_agreement_dichot5050(.8)

# absolute agreement approximate agreement       loose agreement 
# 0.79503               0.20497               0.00000 

repeatability_agreement_dichot5050(.9)

# absolute agreement approximate agreement       loose agreement 
# 0.857225              0.142775              0.000000 

#8020 Dichot Simulation:

repeatability_agreement_dichot8020(.5)

# absolute agreement approximate agreement       loose agreement 
# 0.773595              0.226405              0.000000 

repeatability_agreement_dichot8020(.6)

# absolute agreement approximate agreement       loose agreement 
# 0.799125              0.200875              0.000000 

repeatability_agreement_dichot8020(.7)

# absolute agreement approximate agreement       loose agreement 
# 0.82606               0.17394               0.00000 

repeatability_agreement_dichot8020(.8)

# absolute agreement approximate agreement       loose agreement 
# 0.85736               0.14264               0.00000 

repeatability_agreement_dichot8020(.9)

# absolute agreement approximate agreement       loose agreement 
# 0.900055              0.099945              0.000000 