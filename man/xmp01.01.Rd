\name{xmp01.01}
\alias{xmp01.01}
\docType{data}
\title{data from Example 1.1}
\description{
    The \code{xmp01.01} data frame has 36 rows and 1 column of O-ring
    temperatures for space shuttle test firings or launches.
}
\format{
    This data frame contains the following columns:
    \describe{
	\item{temp}{
	    a numeric vector of temperatures (degrees F)
	}
    }
}
\details{
    The O-ring temperatures for each test firing of the engines or
    actual launch of the space shuttle prior to the 1986 explosion of
    the \emph{Challenger}.
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
      and the Sciences (6th ed)}, Duxbury

  \emph{Presidential Commission on the Space Shuttle Challenger
      Accident}, Vol. \bold{1}, 1986: 129--131
}
\examples{
attach(xmp01.01)
summary(temp)             # summary statistics
stem(temp)
hist(temp, xlab = "Temperature (deg. F)")
rug(temp)
hist(temp, xlab = "Temperature (deg. F)",
     prob = TRUE, col = "lightgray")
lines(density(temp), col = "blue")
rug(temp)
detach()
}
\keyword{datasets}
