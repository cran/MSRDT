% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/boptimal_n.R
\name{boptimal_n}
\alias{boptimal_n}
\title{Optimal Test Sample Size for Binomial RDT}
\usage{
boptimal_n(c, pi, R, thres_CR)
}
\arguments{
\item{c}{Maximum allowable failures}

\item{pi}{Failure probability}

\item{R}{Lower level reliability requirement}

\item{thres_CR}{Threshold (acceptable level) of consumer's risk}
}
\value{
Minimum test sample size
}
\description{
Define the optimal function to find the optimal test plan with minimum test sample size given an acceptable
level of consumer's risk (for binomial RDT).
}
\examples{
\donttest{
pi <- pi_MCSim_beta(M = 5000, seed = 10, a = 1, b = 1)
boptimal_n(c = 2, pi = pi, R = 0.8, thres_CR = 0.05)
}
}
\seealso{
\code{\link{bcore}} for getting the core probability of passting the test;
\code{\link{bconsumerrisk}} for getting the consumer's risk;
\code{\link{bIndicator}} for getting the binary indicator;

Other Binomial RDT functions: 
\code{\link{bIndicator}()},
\code{\link{bconsumerrisk}()},
\code{\link{bcore}()}
}
\concept{Binomial RDT functions}
