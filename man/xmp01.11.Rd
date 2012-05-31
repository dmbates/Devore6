\name{xmp01.11}
\alias{xmp01.11}
\docType{data}
\title{data from Example 1.11}
\description{
  The \code{xmp01.11} data frame has 48 rows and 1 column of 
  measured bond strengths of glass-fiber-reinforced rebars and
  concrete.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{strength}{
      a numeric vector of bond strengths
    }
  }
}
\details{
  Data from a study to develop guidelines for bonding
  glass-fiber-reinforced rebars to concrete.
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury

  (1996) "Design recommendations for bond of GFRP rebars to concrete",
  \emph{Journal of Structural Engineering}, 247-254.
}
\examples{
attach(xmp01.11)
hist(strength, xlab = "Bond strength", col = "lightgray")
rug(strength)
hist(log(strength), xlab = "log(bond strength)", col = "lightgray")
rug(log(strength))
## Create a histogram like Fig 1.11, page 20
hist(strength, breaks = c(2,4,6,8,12,20,30), prob = TRUE,
     col = "lightgray", xlab = "Bond strength")
rug(strength)
detach()
}
\keyword{datasets}
