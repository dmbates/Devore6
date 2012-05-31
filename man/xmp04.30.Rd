\name{xmp04.30}
\alias{xmp04.30}
\docType{data}
\title{data from Example 4.30}
\description{
    The \code{xmp04.30} data frame has 10 rows and 1 columns of
    lifetimes of power apparatus insulation.
}
\format{
    This data frame contains the following columns:
    \describe{
	\item{lifetime}{
	    a numeric vector of lifetimes (hr) of power apparatus
	    insulation under thermal and electrical stress.
	}
    }
}
\source{
    Devore, J. L. (2003) \emph{Probability and Statistics for
	Engineering and the Sciences (6th ed)}, Duxbury

    (1985) "On the estimation of life of power apparatus under combined
    electrical and thermal stress", \emph{IEEE Transactions on
    Electrical Insulation}, 70--78.
}
\examples{
attach(xmp04.30)
## Try normal probability plot first
qqnorm(lifetime, ylab = "Lifetime (hr)")
qqline(lifetime)
## Weibull probability plot, compare Figure 4.36, p. 194
plot(log(-log(1 - seq(0.05, 0.95, 0.1))),
     log(sort(lifetime)), xlab = "Theoretical Quantiles",
     ylab = "log(Lifetime) (log(hr))",
     main = "Weibull Q-Q Plot", las = 1)
detach()
}
\keyword{datasets}
