\name{xmp09.09}
\alias{xmp09.09}
\docType{data}
\title{data from Example 9.9}
\description{
  The \code{xmp09.09} data frame has 16 rows and 4 columns.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{Subject}{
      a numeric vector
    }
    \item{Before}{
      a numeric vector
    }
    \item{After}{
      a numeric vector
    }
    \item{Difference}{
      a numeric vector
    }
  }
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering and the Sciences (6th ed)}, Duxbury
}
\examples{
boxplot(xmp09.09[, c("Before", "After")],
   main = "Data from Example 9.9")
attach(xmp09.09)
boxplot(Difference, main = "Differences in Example 9.9")
qqnorm(Difference,
   main = "Normal probability plot (compare Figure 9.5, p. 377)")
t.test(Difference)
t.test(Before, After, paired = TRUE)   # same test
detach()
}
\keyword{datasets}
