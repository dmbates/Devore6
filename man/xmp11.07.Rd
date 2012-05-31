\name{xmp11.07}
\alias{xmp11.07}
\docType{data}
\title{data from Example 11.7}
\description{
  The \code{xmp11.07} data frame has 36 rows and 3 columns from an
  experiment on the growth of different varieties of tomato plants at
  different planting densities.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{Yield}{
      a numeric vector giving the yields for each plot
    }
    \item{Variety}{
      a numeric vector coding the variety.
    }
    \item{Density}{
      a numeric vector giving the planting density (thousands of plants
      per hectare).
    }
  }
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury

  (1976), ``Effects of plant density on tomato yields in western
  Nigeria'', \emph{Experimental Agriculture}, 43-47.
}
\examples{
plot(Yield ~ Density, data = xmp11.07, col = "lightgray",
  main = "Data from Example 11.7, page 450",
  xlab = "Density (plants/hectare)")
means <- sapply(split(xmp11.07, xmp11.07$Density),
  function(x) tapply(x$Yield, x$Variety, mean))
round(means, 2)
lines(1:4, means[1, ], col = 4, type = "b")
lines(1:4, means[2, ], col = 2, type = "b")
lines(1:4, means[3, ], col = 3, type = "b")
legend(0.4, 21.2, levels(xmp11.07$Variety), lty = 2,
  col = c(4, 2, 3))
fm1 <- lm(Yield ~ Variety * Density, data = xmp11.07)
anova(fm1)    # compare with Table 11.7, page 452
fm2 <- update(fm1, . ~ Variety + Density)  # additive model
anova(fm2)
sort(tapply(xmp11.07$Yield, xmp11.07$Variety, mean))
}
\keyword{datasets}
