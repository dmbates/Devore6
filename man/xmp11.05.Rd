\name{xmp11.05}
\alias{xmp11.05}
\docType{data}
\title{data from Example 11.5}
\description{
  The \code{xmp11.05} data frame has 20 rows and 3 columns of data from
  and experiment on energy consumption of dehumidifiers.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{power}{
      the estimated annual power consumption (kwh) of the dehumidifier
    }
    \item{humid}{
      the level of humidity at which the dehumidifier is tested.  Larger
      numbers correspond to more humid conditions.
    }
    \item{brand}{
      the brand of dehumidifier.
    }
  }
}
\details{
  This is a randomized blocked experiment.
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury
}
\examples{
plot(power ~ humid, data = xmp11.05, col = "lightgray",
     xlab = "Level of humidity",
     ylab = "Estimated annual power consumption (kwh)",
     main = "Data from Example 11.5")
lines(power ~ as.integer(humid), data = xmp11.05,
        subset = brand == 1, col = 2, type = "b")
lines(power ~ as.integer(humid), data = xmp11.05,
        subset = brand == 2, col = 3, type = "b")
lines(power ~ as.integer(humid), data = xmp11.05,
        subset = brand == 3, col = 4, type = "b")
lines(power ~ as.integer(humid), data = xmp11.05,
        subset = brand == 4, col = 5, type = "b")
lines(power ~ as.integer(humid), data = xmp11.05,
        subset = brand == 5, col = 6, type = "b")
legend(0.6, 1010, paste("Brand", 1:5), col = 1 + (1:5),
       lty = 1)
fm1 <- lm(power ~ humid + brand, data = xmp11.05)
anova(fm1)    # compare with Table 11.3, page 442
summary(fm1)
}
\keyword{datasets}
