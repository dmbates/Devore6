\name{xmp09.10}
\alias{xmp09.10}
\docType{data}
\title{data from Example 9.10}
\description{
  The \code{xmp09.10} data frame has 16 rows and 3 columns.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{t1.min}{
      modulus of elasticity (MPa) obtained 1 minute after loading on
      Scotch pine lumber specimens.
    }
    \item{t4.wks}{
      modulus of elasticity (MPa) obtained 4 weeks after loading on
      Scotch pine lumber specimens.
    }
    \item{Difference}{
      a numeric vector of the differences in the modulus of elasticity (MPa)
    }
  }
}
\details{
  This is an extended version of the data from Example 7.11.
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury

  (1996), Time-dependent bending properties of lumber, \emph{J. of
    Testing and Evaluation}, 187-193.
}
\examples{
boxplot(xmp09.10[, c("t1.min", "t4.wks")],
     main = "Data from Example 9.10")
attach(xmp09.10)
## compare to Figure 9.7, page 379
qqnorm(Difference, main = "Differences from Example 9.10",
       ylab = "Difference in modulus of elasticity")
qqline(Difference)
t.test(Difference, conf = 0.99)
t.test(t1.min, t4.wks, paired = TRUE, conf = 0.99) # same thing
detach()
}
\seealso{\code{\link{xmp07.11}}}
\keyword{datasets}
