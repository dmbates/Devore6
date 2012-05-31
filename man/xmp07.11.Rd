\name{xmp07.11}
\alias{xmp07.11}
\docType{data}
\title{data from Example 7.11}
\description{
  The \code{xmp07.11} data frame has 16 rows and 1 columns.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{Elasticity}{
      modulus of elasticity (MPa) obtained 1 minute after loading on
      Scotch pine lumber specimens.
    }
  }
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury

  (1996), Time-dependent bending properties of lumber, \emph{J. of
    Testing and Evaluation}, 187-193.
}
\examples{
boxplot(xmp07.11)
with(xmp07.11, qqnorm(Elasticity))
with(xmp07.11, qqline(Elasticity))
with(xmp07.11, t.test(Elasticity))
}
\seealso{\code{\link{xmp09.10}}}
\keyword{datasets}
