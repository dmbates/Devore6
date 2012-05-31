\name{xmp01.05}
\alias{xmp01.05}
\docType{data}
\title{data from Example 1.5}
\description{
  Percentage of binge drinkers in undergraduates at 140 campuses
}
\format{
  A data frame with 140 observations on the following variable.
  \describe{
    \item{bingePct}{a numeric vector of percentage of binge drinkers}
  }
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
      and the Sciences (6th ed)}, Duxbury
}
\references{
  Based on data displayed in
  ``Health and Behavioral Consequences of Binge Drinking in College'',
  \emph{J. of the Amer. Med. Assoc.}, 1994: 1672-1677.
}
\examples{
str(xmp01.05)
stem(xmp01.05$bingePct)
stem(xmp01.05$bingePct, scale = 0.5)  # compare to Figure 1.4, p. 12
}
\keyword{datasets}

