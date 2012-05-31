\name{xmp10.03}
\alias{xmp10.03}
\docType{data}
\title{data from Example 10.3}
\description{
  The \code{xmp10.03} data frame has 15 rows and 2 columns.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{Soiling}{
      a numeric vector
    }
    \item{Mixture}{
      a numeric vector
    }
  }
}
\details{
  Data from an experiment comparing the degree of soiling for fabric
  copolymerized with three different mixtures of methacrylic acid.
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury

  (1983), ``Chemical factors affecting soiling and soil release from
  cotton DP fabric'', \emph{American Dyestuff Reporter}, 25-30.
}
\examples{
xmp10.03$Mixture <- factor(xmp10.03$Mixture)
plot(Soiling ~ Mixture, data = xmp10.03, col = "lightgray",
     main = "Data from Example 10.3")
summary(xmp10.03)          # check ranges and balance
fm1 <- lm(Soiling ~ Mixture, data = xmp10.03)
anova(fm1)                 # compare to table shown on p. 412
}
\keyword{datasets}
