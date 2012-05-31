\name{ex04.88}
\alias{ex04.88}
\docType{data}
\title{data from exercise 4.88}
\description{
    The \code{ex04.88} data frame has 30 rows and 1 columns of
    precipitation during March in Minneapolis-St. Paul.
}
\format{
    This data frame contains the following columns:
    \describe{
	\item{preciptn}{
	    a numeric vector of precipitation (in) during March in
	    Minneapolis-St. Paul.
	}
    }
}
\source{
    Devore, J. L. (2003) \emph{Probability and Statistics for
	Engineering and the Sciences (6th ed)}, Duxbury
}
\examples{
attach(ex04.88)
## Normal probability plot
qqnorm(preciptn, ylab = "Precipitation (in)",
   main = "Precipitation during March in Minneapolis-St. Paul")
qqline(preciptn)
## Normal probability plot on square root scale
qqnorm(sqrt(preciptn),
   ylab = expression(sqrt("Precipitation (in)")),
   main =
     "Precipitation during March in Minneapolis-St. Paul")
qqline(sqrt(preciptn))
detach()   
}
\keyword{datasets}
