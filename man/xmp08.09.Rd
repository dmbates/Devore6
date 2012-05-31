\name{xmp08.09}
\alias{xmp08.09}
\docType{data}
\title{data from Example 8.9}
\description{
  Five observations of the maximum weight of lift.
}
\format{
  A data frame with 5 observations on the following variable.
  \describe{
    \item{MAWL}{maximum weight of lift (kg) for a frequency of four lifts/min.}
  }
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury
}
\references{
  ``The Effects of Speed, Frequency, and Load on Measured Hand Forces
  for a Floor-to-Knuckle Lifting Task'', \emph{Ergonomics}, 1992: 833--843.
}
\examples{
str(xmp08.09)
with(xmp08.09, t.test(MAWL, mu = 25, alt = "greater"))
}
\keyword{datasets}
