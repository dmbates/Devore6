\name{ex10.42}
\alias{ex10.42}
\docType{data}
\title{data from exercise 10.42}
\description{
  The \code{ex10.42} data frame has 19 rows and 2 columns of critical
  flicker frequencies according to eye color.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{cff}{a numeric vector of critical flicker frequencies}
    \item{color}{eye color - a factor with levels \code{Blue},
      \code{Brown}, and \code{Green}}
  }
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury
}
\examples{
str(ex10.42)
boxplot(cff ~ color, ex10.42, horizontal = TRUE, las = 1,
  xlab = "Critical Flicker Frequency (Hz)")
fm1 <- aov(cff ~ color, data = ex10.42)
summary(fm1)
}
\keyword{datasets}
