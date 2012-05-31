\name{xmp06.12}
\alias{xmp06.12}
\docType{data}
\title{data from Example 6.12}
\description{
    The \code{xmp06.12} data frame has 20 rows and 1 columns of data on
    the survival times of mice subjected to radiation.
}
\format{
    This data frame contains the following columns:
    \describe{
	\item{Survival}{
	    a numeric vector of survival times (weeks) of mice subjected
	    to 240 rads of gamma radiation.
	}
    }
}
\source{
    Devore, J. L. (2003) \emph{Probability and Statistics for
	Engineering and the Sciences (6th ed)}, Duxbury.
    
    Gross, A. J. and Clark, V. (1976) \emph{Survival Distributions:
	Reliability Applications in the Biomedical Sciences}, Wiley.
}
\examples{
attach(xmp06.12)
gamma.MoM <- function(x) {
   ## calculate method of moments estimates for gamma distribution
   xbar <- mean(x)
   mnSqDev <- mean((x - xbar)^2)
   c(alpha = xbar^2/mnSqDev, beta = mnSqDev/xbar)
}
## method of moments estimates
print(surv.MoM <- gamma.MoM(Survival))
## evaluating the negative log-likelihood
gammaLlik <- function(x) {
   ## argument x is a vector of shape (alpha) and scale (beta)
   -sum(dgamma(Survival, shape = x[1], scale = x[2], log = TRUE))
}
## maximum likelihood estimates - use MoM estimates as starting value
MLE <- optim(par = surv.MoM, gammaLlik)
print(MLE)
detach()
}
\keyword{datasets}
