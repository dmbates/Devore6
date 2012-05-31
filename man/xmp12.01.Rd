\name{xmp12.01}
\alias{xmp12.01}
\docType{data}
\title{data from Example 12.1}
\description{
  The \code{xmp12.01} data frame has 30 rows and 2 columns.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{palprebal}{
      width of the palprebal fissure (cm).
    }
    \item{OSA}{
      Ocular Surface Area, a measure of vertical gaze direction (cm\eqn{^2}).
    }
  }
}
\details{
  These are data from an experiment relating the vertical gaze
  direction, as measured by the ocular surface area, to the width of the
  palprebal fissure (horizontal width of the eye opening).
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury

  (1996), ``Analysis of ocular surface area for comfortable VDT
  workstation layout'', \emph{Ergometrics}, 877-884.
}
\examples{
plot(OSA ~ palprebal, data = xmp12.01,
     xlab = "Palprebal fissure width (cm)",
     ylab = expression(paste(plain("Occular surface area (cm")^2,
               plain(")"))),
     main = "Data from Example 12.1, page 490", las = 1)
summary(xmp12.01)
fm1 <- lm(OSA ~ palprebal, data = xmp12.01)
summary(fm1)
abline(fm1)
opar <- par(mfrow = c(2,2))
plot(fm1)
par(opar)
}
\keyword{datasets}
