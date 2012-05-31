\name{xmp11.11}
\alias{xmp11.11}
\docType{data}
\title{data from Example 11.11}
\description{
  The \code{xmp11.11} data frame has 96 rows and 4 columns giving data
  on the heat tolerance of cattle under different conditions.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{Tempr}{
      observed body temperature of the cattle (degrees Fahrenheit - 100)
    }
    \item{Period}{
      a numeric vector indicating the period of the year
    }
    \item{Strain}{
      a numeric vector indicating the strain of cattle
    }
    \item{Coat}{
      a numeric vector indicating the coat type
    }
  }
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury

  (1959), ``The significance of the coat in hear tolerance of cattle'',
  \emph{Australian J. Agricultural Research}, 744-748.
}
\examples{
coplot(Tempr ~ as.integer(Period) | Strain * Coat,
       data = xmp11.11, show.given = FALSE)
coplot(Tempr ~ as.integer(Strain) | Period * Coat,
       data = xmp11.11, show.given = FALSE)
coplot(Tempr ~ as.integer(Coat) | Period * Strain,
       data = xmp11.11, show.given = FALSE)
fm1 <- lm(Tempr ~ Period * Strain * Coat, xmp11.11)
anova(fm1)  # compare with Table 11.8, page 461
}
\keyword{datasets}
