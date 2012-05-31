\name{xmp01.10}
\alias{xmp01.10}
\docType{data}
\title{data from Example 1.10}
\description{
  The \code{xmp01.10} data frame has 90 rows and 1 column of adjusted
  power consumption for a sample of gas-heated homes.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{consump}{
      a numeric vector of adjusted power consumption (BTU) for
      gas-heated homes.
    }
  }
}
\details{
  Data obtained by Wisconsin Power and Light on the adjusted energy
  consumption during a particular period for a sample of gas-heated
  homes.  The energy consumption in BTU's is adjusted for the size
  (area) of the house and the weather (number of degree days of
  heating).

  These data are part of the FURNACE.MTW worksheet available with Minitab.
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury
}
\examples{
attach(xmp01.10)
hist(consump, col = "lightgray",
     xlab = "Adjusted energy consumption")
rug(consump)
hist(consump, col = "lightgray",
     xlab = "Adjusted energy consumption",
     prob = TRUE)
lines(density(consump), col = "blue")
rug(consump)
summary(consump)
# Make a histogram like Fig 1.9, p. 19
hist(consump, breaks = 1 + 2*(0:9),
     xlab = "BTUN", prob = TRUE, col = "lightgray")
rug(consump)
detach()
}
\keyword{datasets}
