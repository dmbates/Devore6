\name{xmp06.03}
\alias{xmp06.03}
\docType{data}
\title{data from Example 6.3}
\description{
  The \code{xmp06.03} data frame has 8 rows and 1 columns.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{Strength}{
      elastic modulus (GPa) of AZ91D alloy specimens from a die-casting
      process
    }
  }
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury

  (1998), On the development of a new approach for the determination of
  yield strength in Mg-based alloys, \emph{Light Metal Age}, Oct.,
  50-53.
}
\examples{
attach(xmp06.03)
stem(Strength)
var(Strength)  # usual (unbiased) estimate of sigma^2
## alternative estimate of sigma^2 with n in denominator
sum((Strength - mean(Strength))^2)/length(Strength)
}
\keyword{datasets}
