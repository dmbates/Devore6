\name{xmp11.16}
\alias{xmp11.16}
\docType{data}
\title{data from Example 11.16}
\description{
  The \code{xmp11.16} data frame has 16 rows and 6 columns of data from
  a blocked, \eqn{2^3} replicated factorial design.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{strength}{
      strength of the product solution (arbitrary units).
    }
    \item{tempture}{
      reactor temperature - coded as \eqn{\pm 1}{+/-1}.
    }
    \item{gas}{
      gas throughput - coded as \eqn{\pm 1}{+/-1}.
    }
    \item{conc}{
      concentration of active constituent - coded as \eqn{\pm 1}{+/-1}.
    }
    \item{block}{
      block in which the experiment was run.
    }
  }
}
\source{
  (1951), Factorial experiments in pilot plant studies, \emph{Industrial
    and Engineering Chemistry}, 1300--1306.
  
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury
}
\examples{
## leave -1/+1 encoding for experimental factors, convert block
fm1 <- aov(strength ~ tempture * gas * conc + block,
           data = xmp11.16)
summary(fm1)     # anova table
}
\keyword{datasets}
