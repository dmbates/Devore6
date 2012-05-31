\name{xmp12.08}
\alias{xmp12.08}
\docType{data}
\title{data from Example 12.8}
\description{
  The \code{xmp12.08} data frame has 14 rows and 2 columns.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{strength}{
      fracture strength, as a percentage of the ultimate tensile strength.
    }
    \item{attenuat}{
      attenuation or decrease in the amplitude of the stress wave (neper/cm).
    }
  }
}
\details{
  Data from a study to investigate how the propagation of an ultrasonic
  stress wave through a substance depends on the properties of the
  substance.  The test substance was fiberglass-reinforced polyester
  composites.
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury

  (1985), ``Promising quantitative nondestructive evaluation techniques
  for composite materials'', \emph{Materials Evaluation}, 561-565.
}
\examples{
plot(attenuat ~ strength, data = xmp12.08,
     xlab = "Fracture strength (\% of ultimate tensile strength)",
     ylab = "Attenuation (neper/cm)",
     main = "Data from Example 12.8, page 504")
fm1 <- lm(attenuat ~ strength, data = xmp12.08)
abline(fm1)
summary(fm1)
opar <- par(mfrow = c(2, 2))
plot(fm1)
par(opar)
anova(fm1)
}
\keyword{datasets}
