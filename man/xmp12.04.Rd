\name{xmp12.04}
\alias{xmp12.04}
\docType{data}
\title{data from Example 12.4}
\description{
  The \code{xmp12.04} data frame has 15 rows and 2 columns.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{weight}{
      unit weight of the concrete specimen (pcf).
    }
    \item{porosity}{
      porosity (\%) of the concrete specimen.
    }
  }
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury

  (1995) ``Pavement thickness design for no-fines concrete parking
  lots'' \emph{J. of Transportation Engineering}, 476-484.
}
\examples{
plot(porosity ~ weight, data = xmp12.04,
     xlab = "Unit weight (pcf) of concrete specimen",
     ylab = "Porosity (\%)",
     main = "Data from Example 12.4, page 500")
fm1 <- lm(porosity ~ weight, data = xmp12.04)
abline(fm1)
summary(fm1)
opar <- par(mfrow = c(2,2))
plot(fm1)
par(opar)
}
\keyword{datasets}
