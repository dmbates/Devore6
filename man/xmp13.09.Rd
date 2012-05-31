\name{xmp13.09}
\alias{xmp13.09}
\docType{data}
\title{data from Example 13.9}
\description{
  The \code{xmp13.09} data frame has 8 rows and 2 columns of data on
  cure temperature and ultimate sheer strength of rubber compounds.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{tempture}{
      cure temperature (degrees Fahrenheit).
    }
    \item{strength}{
      ultimate sheer strength (psi)
    }
  }
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury 

  (1971), "A method for improving the accuracy of polynomial regression
  analysis",  \emph{J. Quality Technology}, 149--155.
}
\examples{
plot(strength ~ tempture, data = xmp13.09)
fm1 <- lm(strength ~ tempture + I(tempture^2), data = xmp13.09)
summary(fm1)
xmp13.09$Tcentered <- scale(xmp13.09$tempture, scale = FALSE)
fm2 <- lm(strength ~ Tcentered + I(Tcentered^2), data = xmp13.09)
summary(fm2)
## another approach using orthogonal polynomials
fm3 <- lm(strength ~ poly(tempture, 2), data = xmp13.09)
summary(fm3)
}
\keyword{datasets}
