\name{xmp04.28}
\alias{xmp04.28}
\docType{data}
\title{data from Example 4.28}
\description{
    The \code{xmp04.28} data frame has 10 rows and 1 columns of
    constructed data representing measurement errors.
}
\format{
    This data frame contains the following columns:
    \describe{
	\item{meas.err}{
	    a numeric vector of measurement errors (no units given)
	}
    }
}
\source{
    Devore, J. L. (2003) \emph{Probability and Statistics for
	Engineering and the Sciences (6th ed)}, Duxbury
}
\examples{
attach(xmp04.28)
qqnorm(meas.err)   # compare to Figure 4.31, p. 188
qqline(meas.err)
detach()
}
\keyword{datasets}
