\name{xmp12.06}
\alias{xmp12.06}
\docType{data}
\title{data from Example 12.6}
\description{
  The \code{xmp12.06} data frame has 11 rows and 2 columns.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{traffic}{
      traffic flow (1000's of cars per 24 hours)
    }
    \item{lead}{
      lead content of bark of trees near the highway (\eqn{\mu}{u}g/g
      dry wt).
    }
  }
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury
}
\examples{
plot(lead ~ traffic, data = xmp12.06,
     xlab = "Traffic flow (1000's of cars per 24 hours)",
     ylab = expression(paste(plain("Lead content of tree bark ("),
       mu,plain("g/g dry wt)"))),
     main = "Data from Example 12.6, page 503", las = 1)
fm1 <- lm(lead ~ traffic, data = xmp12.06)
abline(fm1)
summary(fm1)
opar <- par(mfrow = c(2, 2))
plot(fm1)
par(opar)
## compare to table on page 503
cbind(xmp12.06, yhat = fitted(fm1), resid = resid(fm1))
anova(fm1)
}
\keyword{datasets}
