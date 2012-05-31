\name{xmp07.06}
\alias{xmp07.06}
\docType{data}
\title{data from Example 7.6}
\description{
  The \code{xmp07.06} data frame has 48 rows and 1 columns.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{Voltage}{
      the AC breakdown voltage (kV) of a circuit
    }
  }
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury

  (1995), Testing practices for the AC breakdown voltage testing of
  insulation liquids, \emph{IEEE Electrical Insulation Magazine},
  21-26.
}
\examples{
boxplot(xmp07.06,
  main = "AC Breakdown Voltage (kV)")
# t.test gives a 95\% confidence interval on the mean
t.test(xmp07.06)   
}
\keyword{datasets}
