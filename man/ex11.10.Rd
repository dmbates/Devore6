\name{ex11.10}
\alias{ex11.10}
\docType{data}
\title{data from exercise 11.10}
\description{
  Strength of concrete according to batch and test method
}
\format{
  A data frame with 30 observations on the following 3 variables.
  \describe{
    \item{strength}{a numeric vector of compressive strength (MPa)}
    \item{Method}{a factor with levels \code{A} \code{B} \code{C}}
    \item{Batch}{a factor with levels \code{1} \code{2} \code{3} \code{4} \code{5} \code{6} \code{7} \code{8} \code{9} \code{10}}
  }
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury
}
\examples{
xtabs(strength ~ Batch + Method, data = ex11.10)
}
\keyword{datasets}
