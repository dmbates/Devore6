\name{xmp01.02}
\alias{xmp01.02}
\docType{data}
\title{data from Example 1.2}
\description{
    The \code{xmp01.02} data frame has 27 rows and 1 column of flexural
    strengths of concrete.
}
\format{
    This data frame contains the following columns:
    \describe{
	\item{strength}{
	    a numeric vector of flexural strengths (MegaPascals)
	}
    }
}
\details{
    Data on the flexural strength (MPa) of high-performance concrete
    beams obtained by using superplasticizers and certain binders.
}
\source{
    Devore, J. L. (2003) \emph{Probability and Statistics for
	Engineering and the Sciences (6th ed)}, Duxbury

    (1997) "Effects of aggregates and microfillers on the flexural
    properties of concrete", \emph{Magazine of Concrete Research}, 81--98.
}
\examples{
attach(xmp01.02)
hist(strength, xlab = "Flexural strength (MPa)",
     col = "lightgray")
rug(strength)
summary(strength)
boxplot(strength, col = "lightgray", notch = TRUE,
        ylab = "Flexural strength (MPa)",
        main = "Boxplot of strength",
        sub =
"Notches show a 95\% confidence interval on the median strength")
detach()
}
\keyword{datasets}
