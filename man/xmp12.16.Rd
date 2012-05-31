\name{xmp12.16}
\alias{xmp12.16}
\docType{data}
\title{data from Example 12.16}
\description{
  Correlation of concentrations of two pollutants
}
\format{
  A data frame with 16 observations on the following 2 variables.
  \describe{
    \item{x}{a numeric vector of ozone concentrations (ppm)}
    \item{y}{a numeric vector of secondary carbon concentrations
      (microgram/m-cub)}
  }
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury
}
\references{
  ``The Carbon Component of the Los Angeles Aerosol: Source
  Apportionment and Contributions to the Visibility Budget'',
  \emph{J. Air Polution Control Fed.}, 1984: 643-650.
}
\examples{
plot(y ~ x, data = xmp12.16, xlab = "Ozone concentration (ppm)",
     ylab = "Secondary carbon concentration")
cor(xmp12.16$x, xmp12.16$y)
cor.test(~ x + y, data = xmp12.16)
}
\keyword{datasets}
