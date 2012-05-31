\name{xmp13.11}
\alias{xmp13.11}
\docType{data}
\title{data from Example 13.11}
\description{
  The \code{xmp13.11} data frame has 30 rows and 6 columns giving the
  ball bond shear strength from a wire bonding process and several
  covariates. 
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{Observation}{
      observation number (not used).
    }
    \item{Force}{
      force (gm).
    }
    \item{Power}{
      power (mw).
    }
    \item{Temperature}{
      temperature (degrees Celsius).
    }
    \item{Time}{
      time (ms).
    }
    \item{Strength}{
      ball bond strength (gm).
    }
  }
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury

  Vardeman, S. (1994) \emph{Statistics Engineering Problem Solving}, 
}
\examples{
fm1 <- lm(Strength ~ Force + Power + Temperature + Time,
     data = xmp13.11)
summary(fm1)
anova(fm1)
}
\keyword{datasets}
