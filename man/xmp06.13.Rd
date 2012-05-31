\name{xmp06.13}
\alias{xmp06.13}
\docType{data}
\title{data from Example 6.13}
\description{
    The \code{xmp06.13} data frame has 420 rows and 1 columns of the
    number of goals pre game scored by National Hockey League teams
    during the 1966-1967 season.
}
\format{
    This data frame contains the following columns:
    \describe{
	\item{goals}{
	    a numeric vector
	}
    }
}
\source{
    Devore, J. L. (2003) \emph{Probability and Statistics for
	Engineering and the Sciences (6th ed)}, Duxbury
    
    Reep, C. and Pollard, R. and Benjamin, B. (1971), ``Skill and chance
    in ball games'', \emph{Journal of the Royal Statistical Society,
	Series A, General}, \bold{134}, 623--629
}
\examples{
attach(xmp06.13)
table(goals)      # compare to frequency table on p. 267
hist(goals, breaks = 0:12 - 0.5, las = 1, col = "lightgray")
negBinom.MoM <- function(x) {
   ## method of moments estimates for negative binomial distribution
   xbar <- mean(x)
   mnSqDev <- mean((x - xbar)^2)
   c(p = xbar/mnSqDev, r = xbar^2/(mnSqDev - xbar))
}
print(goals.MoM <- negBinom.MoM(goals))
## MLE's
optim(goals.MoM, function(x)
  -sum(dnbinom(goals, p = x[1], size = x[2], log = TRUE)))
## would have been better to use a transformation of p
detach()
}
\keyword{datasets}
