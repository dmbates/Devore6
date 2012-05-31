\name{ex04.82}
\alias{ex04.82}
\docType{data}
\title{data from exercise 4.82}
\description{
    The \code{ex04.82} data frame has 10 rows and 1 columns of bearing
    lifetimes.
}
\format{
    This data frame contains the following columns:
    \describe{
	\item{lifetime}{
	    a numeric vector
	}
    }
}
\source{
    Devore, J. L. (2003) \emph{Probability and Statistics for
	Engineering and the Sciences (6th ed)}, Duxbury

    (1985), "Modified Moment Estimation for the three-parameter
    Log-normal distribution", \emph{Journal of Quality Technology},
    92--99.
}
\examples{
attach(ex04.82)
boxplot(lifetime, ylab = "Lifetime (hr)",
        main = "Bearing lifetimes from exercise 4.82",
        col = "lightgray")
## Normal probability plot on the original time scale
qqnorm(lifetime, ylab = "Lifetime (hr)", las = 1)
qqline(lifetime)
## Try normal probability plot of the log(lifetime)
qqnorm(log(lifetime), ylab = "log(lifetime) (log(hr))",
       las = 1)
qqline(log(lifetime))
detach()
}
\keyword{datasets}
