\name{xmp10.08}
\alias{xmp10.08}
\docType{data}
\title{data from Example 10.8}
\description{
  The \code{xmp10.08} data frame has 22 rows and 2 columns of data on
  the elastic modulus of Mg-based alloys obtained by a new ultrasonic
  process for specimens produced using three different casting
  processes.}
\format{
  This data frame contains the following columns:
  \describe{
    \item{elastic}{a numeric vector of the elastic modulus (GPa)}
    \item{type}{a factor indicating the casting process with levels
      \code{Die}, \code{Permanent}, and \code{Plaster}}
  }
}
\source{
    Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury
}
\references{
  (1998), ``On the development of a new approach for the deterimination
  of yield strength in Mg-based alloys'', \emph{Light Metal Age}, Oct. 51--53.
}
\examples{
str(xmp10.08)
fm1 <- aov(elastic ~ type, data = xmp10.08)
anova(fm1)
}
\keyword{datasets}
