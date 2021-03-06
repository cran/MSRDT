## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(MSRDT)

## -----------------------------------------------------------------------------
###Generate the prior distribution of failure probability
##Beta is conjugate prior to binomial distribution
#Get the non-informative prior Beta(1, 1)
pi <- pi_MCSim_beta(M = 5000, seed = 10, a = 1, b = 1)

#Get the consumer's risk
n = 10
R = 0.8
c = 2
b_CR <- bconsumerrisk(n = n, c = c, pi = pi, R = R)
print(b_CR)

##As n increases, CR decreases
#Get the optimal test sample size
thres_CR = 0.05 #CR < 0.05
b_n <- boptimal_n(c = c, pi = pi, R = R, thres_CR = thres_CR)
print(b_n)

## -----------------------------------------------------------------------------
###Generate the prior distribution of failure probability
##Dirichlet is conjugate prior to multinomial distribution
#Get the non-informative prior Dirichlet(1, 1, 1)
pi <- pi_MCSim_dirichlet(M = 5000, seed = 10, par = c(1, 1, 1))

#Get the consumer's risk
n = 10
cvec = c(1, 1)
Rvec = c(0.8, 0.7)
MPCum_CR <- MPCum_consumerrisk(n = n, cvec = cvec, pivec = pi, Rvec = Rvec)
print(MPCum_CR)

##As n increases, CR decreases
#Get the optimal test sample size
thres_CR = 0.05 #CR <= 0.05
MPCum_n <- MPCum_optimal_n(cvec = cvec, pivec = pi, Rvec = Rvec, thres_CR = thres_CR)
print(MPCum_n)

