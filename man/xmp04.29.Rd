\name{xmp04.29}
\alias{xmp04.29}
\docType{data}
\title{data from Example 4.29}
\description{
    The \code{xmp04.29} data frame has 19 rows and 2 columns of
    dielectric breakdown voltages and their corresponding standard
    normal quantiles used in a normal probability plot.
}
\format{
    This data frame contains the following columns:
    \describe{
	\item{Voltage}{
	    a sorted numeric vector of the dielectric breakdown voltages
	    measured on a piece of epoxy resin.
	}
	\item{z.percentile}{
	    a numeric vector of standard normal quantiles
	}
    }
}
\source{
    Devore, J. L. (2003) \emph{Probability and Statistics for
	Engineering and the Sciences (6th ed)}, Duxbury 

    (1996) "Maximum likelihood estimation in the 3-parameter Weibull
    Distribution", \emph{IEEE Transactions on Dielectrics and Electrical
    Insulation}, 43--55.
}
\examples{
attach(xmp04.29)
## compare to Figure 4.33, page 190
qqp <- qqnorm(Voltage)
qqline(Voltage)
detach()
## compare quantiles with those given in book
cbind(qqp, xmp04.29)
}
\keyword{datasets}
