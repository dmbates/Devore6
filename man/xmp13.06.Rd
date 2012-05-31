\name{xmp13.06}
\alias{xmp13.06}
\docType{data}
\title{data from Example 13.6}
\description{
  The \code{xmp13.06} data frame has 24 rows and 2 columns of data on
  space shuttle launches.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{Temperature}{
      launch temperature (degrees Fahrenheit).
    }
    \item{Failure}{
      a factor with levels
      \code{N} and
      \code{Y} indicating the incidence of failure of O-rings.
    }
  }
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury
}
\examples{
fm1 <- glm(Failure ~ Temperature, 
    data = xmp13.06, family = "binomial")
## results are different from JMP results in Figure 13.9
summary(fm1)
temp <- seq(55, 85, len = 101)   # for doing the prediction
plot(
  predict(fm1, new = list(Temperature = temp), type = "resp") ~ temp,
  main = "Compare with Figure 13.8, page 560", type = "l",
  ylab = "P(F)")
}
\keyword{datasets}
