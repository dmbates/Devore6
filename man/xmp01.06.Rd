\name{xmp01.06}
\alias{xmp01.06}
\docType{data}
\title{data from Example 1.6}
\description{
    The \code{xmp01.06} data frame has 40 rows and 1 columns.
}
\format{
    This data frame contains the following columns:
    \describe{
	\item{yardage}{
	    a numeric vector
	}
    }
}
\details{
    Described in Devore (1995) as `` A random sample of the yardages of
    golf courses that have been designated by \emph{Golf Digest} as
    among the most challenging in the United States.''
}
\source{
    Devore, J. L. (2003) \emph{Probability and Statistics for
	Engineering and the Sciences (6th ed)}, Duxbury
}
\examples{
attach(xmp01.06)
summary(yardage)
stem(yardage)
hist(yardage, col = "lightgray",
     xlab = "Golf course yardages")
rug(yardage)
qqnorm(yardage, las = 1, ylab = "Golf course yardages")
detach()
}
\keyword{datasets}
