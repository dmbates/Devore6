\name{xmp12.02}
\alias{xmp12.02}
\docType{data}
\title{data from Example 12.2}
\description{
  The \code{xmp12.02} data frame has 19 rows and 2 columns.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{soil.pH}{
      pH of the soil at the test site.
    }
    \item{dieback}{
      mean crown dieback at the test site (\%).
    }
  }
}
\details{
  These data are from an observational study of the mean crown dieback,
  a measure of the growth retardation in sugar maples, and the soil pH.
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury

  (1995) ``Relationships among crown condition, growth, and stand
  nutrition in seven northern Vermont sugarbushes'', \emph{Canadian
    Journal of Forest Research}, 386--397
}
\examples{
plot(dieback ~ soil.pH, data = xmp12.02,
     xlab = "soil pH", ylab = "mean crown dieback (\%)",
     main = "Data from Example 12.2, page 491")
fm1 <- lm(dieback ~ soil.pH, data = xmp12.02)
abline(fm1)
summary(fm1)
opar <- par(mfrow = c(2,2))
plot(fm1)
par(opar)
}
\keyword{datasets}
