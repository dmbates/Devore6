\name{xmp13.01}
\alias{xmp13.01}
\docType{data}
\title{data from Example 13.1}
\description{
  The \code{xmp13.01} data frame has 14 rows and 2 columns.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{rate}{
      a numeric vector
    }
    \item{emission}{
      a numeric vector
    }
  }
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury 
}
\examples{
plot(emission ~ rate, data = xmp13.01,
     xlab = "Burner area liberation rate",
     ylab = expression(plain("NO")["x"]*
                 plain("emissions")), las = 1,
     main = "Data from Example 13.1, page 545")
fm1 <- lm(emission ~ rate, data = xmp13.01)
abline(fm1)                   # plot 1, Figure 13.1
sres <- rstandard(fm1)
plot(sres ~ fitted(fm1), ylab = "Standardized residuals",
     xlab = "Fitted values")  # plot 2, Figure 13.1
abline(h = 0, lty = 2, lwd = 0)   # horizontal reference
plot(resid(fm1) ~ fitted(fm1), ylab = "Residuals",
     xlab = "Fitted values")  # alternative plot 2
abline(h = 0, lty = 2, lwd = 0)   # horizontal reference
plot(fitted(fm1) ~ emission, data = xmp13.01)
abline(0, 1)                  # plot 3, Figure 13.1
plot(sres ~ rate, data = xmp13.01) # plot 4
abline(h = 0, lty = 2, lwd = 0)
qqnorm(sres)               # plot 5
## The residuals versus fitted plot and the normal
## probability plot of the standardized residuals 
plot(fm1, which = 1:2)
}
\keyword{datasets}
