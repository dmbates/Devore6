\name{xmp13.03}
\alias{xmp13.03}
\docType{data}
\title{data from Example 13.3}
\description{
  The \code{xmp13.03} data frame has 12 rows and 2 columns of data on tool
  lifetime versus cutting time.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{time}{
      the cutting time (unknown units).
    }
    \item{ToolLife}{
      tool lifetime (unknown units).
    }
  }
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury

  (1967) ``The effect of experimental error on the determination of
  optimum metal cutting conditions'', \emph{J. Eng. for Industry}, 315--322. 
}
\examples{
plot(ToolLife ~ time, data = xmp13.03)
plot(ToolLife ~ time, data = xmp13.03, log = "xy")
fm1 <- lm(log(ToolLife) ~ I(log(time)), data = xmp13.03)
summary(fm1)
plot(fm1, which = 1)     # plot of residuals versus fitted values
plot(exp(fitted(fm1)) ~ xmp13.03$ToolLife,
   xlab = "y", ylab = expression(hat("y")),
   main = "Compare to Figure 13.4, page 555")
abline(0, 1)       # reference line
}
\keyword{datasets}
