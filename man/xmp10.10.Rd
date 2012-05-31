\name{xmp10.10}
\alias{xmp10.10}
\docType{data}
\title{data from Example 10.10}
\description{
  The \code{xmp10.10} data frame has 18 rows and 2 columns.
}
\format{
    This data frame contains the following columns:
    \describe{
	\item{travel}{
	  a numeric vector giving the travel time for ultrasonic
	  head-waves in the rail (nanoseconds).  The value given is the
	  original travel time minus 36,100 nanoseconds.
	}
	\item{Rail}{
	    an ordered factor identifying the rail on which the
	    measurement was made.
	}
    }
}
\details{
  Data from a study of travel time for a certain type of wave that
  results from longitudinal stress of rails used for railroad track.
}
\source{
    Devore, J. L. (2003), \emph{Probability and Statistics for
      Engineering and the Sciences (6th ed)}, Duxbury, Boston, MA.
    
    Pinheiro, J. C. and Bates, D. M. (2003), \emph{Mixed-Effects Models in S
	and S-PLUS}, Springer, New York.  (Appendix A.26)

    (1985), ``Zero-force travel-time parameters for ultrasonic
    head-waves in railroad rail'', \emph{Materials Evaluation},
    854-858.
}
\examples{
xmp10.10$Rail <- factor(xmp10.10$Rail)
boxplot(travel ~ Rail, xmp10.10, col = "lightgray",
  xlab = "Rail", ylab = "Zero-force travel time (microsec)",
  main = "Travel times in rails, from example 10.10")
fm1 <- lm(travel ~ Rail, data = xmp10.10)
anova(fm1)
}
\keyword{datasets}
