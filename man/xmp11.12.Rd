\name{xmp11.12}
\alias{xmp11.12}
\docType{data}
\title{data from Example 11.12}
\description{
  The \code{xmp11.12} data frame has 36 rows and 4 columns.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{abrasion}{
      a numeric vector
    }
    \item{row}{
      a numeric vector
    }
    \item{column}{
      a numeric vector
    }
    \item{humidity}{
      a numeric vector
    }
  }
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury

  (1946), ``The abrasion of leather'', \emph{J. Inter. Soc. Leather
    Trades' Chemists}, 287.
}
\examples{
xmp11.12$row <- ordered(xmp11.12$row)
xmp11.12$column <- ordered(xmp11.12$column)
xmp11.12$humidity <- ordered(xmp11.12$humidity)
attach(xmp11.12)  # to check the design
table(row, column)
table(row, humidity)
table(humidity, column)
detach()
fm1 <- lm(abrasion ~ row + column + humidity, xmp11.12)
anova(fm1)    # compare with Table 11.9, page 464
}
\keyword{datasets}
