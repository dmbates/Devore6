\name{xmp10.05}
\alias{xmp10.05}
\docType{data}
\title{data from Example 10.5}
\description{
  The \code{xmp10.05} data frame has 20 rows and 2 columns of data from
  an experiment on the effect of alcohol on REM sleep time
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{REMtime}{
      a numeric vector giving the rapid eye movement (REM) sleep time
      for each rat during a 24-hour period
    }
    \item{ethanol}{
      a numeric vector giving the concentration of ethanol (alcohol) per
      body weight administered to the rat (g/kg)
    }
  }
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury

  (1978), ``Relationship of ethanol blood level to REM and non-REM sleep
  time and distribution in the rat'', \emph{Life Sciences}, 839-846.
}
\examples{
plot(REMtime ~ ethanol, data = xmp10.05,
     xlab = "Ethanol concentration administered (g/kg)",
     ylab = "Amount of REM sleep during a 24 hour period")
fm1 <- lm(REMtime ~ factor(ethanol), data = xmp10.05)
anova(fm1)      # compare with Table 10.4, p. 417
summary(fm1)    # differences with baseline (0 g/kg)
##  more appropriate to use an ordered factor
fm2 <- lm(REMtime ~ ordered(ethanol), data = xmp10.05)
anova(fm2)      # same as above
summary(fm2)    # polynomial contrasts
##  best model uses square root of ethanol concentration
plot(REMtime ~ sqrt(ethanol), data = xmp10.05,
     xlab = expression(sqrt(
        plain("Ethanol concentration administered (g/kg)"))),
     ylab = "Amount of REM sleep during a 24 hour period")
fm3 <- lm(REMtime ~ sqrt(ethanol), data = xmp10.05)
summary(fm3)
abline(fm3)
anova(fm3, fm1)   # lack of fit test
opar <- par(mfrow = c(2,2))
plot(fm3, main = "Continuous fit to data in Example 10.5")
par(opar)
}
\keyword{datasets}
