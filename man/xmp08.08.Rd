\name{xmp08.08}
\alias{xmp08.08}
\docType{data}
\title{data from Example 8.8}
\description{
  The \code{xmp08.08} data frame has 52 rows and 1 columns.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{DCP}{
      dynamic cone penetrometer readings (mm/blow) for a certain type
      of pavement.
    }
  }
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury

  (1999), Probabilistic model for the analysis of dynamic cone
  penetrometer test values in pavement structure evaluation,
  \emph{J. Testing and Evaluation}, 7-14.
}
\examples{
boxplot(xmp08.08, main = "DCP readings")
attach(xmp08.08)
hist(DCP, breaks = 8, prob = TRUE)
rug(DCP)
lines(density(DCP), col = "blue")
t.test(DCP, alt = "less", mu = 30)
}
\keyword{datasets}
