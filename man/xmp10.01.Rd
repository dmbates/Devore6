\name{xmp10.01}
\alias{xmp10.01}
\docType{data}
\title{data from Example 10.1}
\description{
  The \code{xmp10.01} data frame has 24 rows and 2 columns.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{strength}{
      a numeric vector
    }
    \item{type}{
      a factor with levels
      \code{A} 
      \code{B} 
      \code{C} 
      \code{D} 
    }
  }
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury
}
\examples{
boxplot(strength ~ type, data = xmp10.01, 
    main = "Data from Example (compare Figure 10.1, p. 405)")
fm1 <- lm( strength ~ type, data = xmp10.01 )  # fit anova model
qqnorm(resid(fm1), main = "Compare to Figure 10.2, p. 407")
anova(fm1)     # compare results in Example 10.2, p. 409
}
\keyword{datasets}
