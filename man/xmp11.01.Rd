\name{xmp11.01}
\alias{xmp11.01}
\docType{data}
\title{data from Example 11.1}
\description{
  The \code{xmp11.01} data frame has 12 rows and 3 columns from an
  experiment on the effect of different washing treatments in removing
  marks from an erasable pen.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{strength}{
      a quantitative indicator of the overall specimen color change; the
      lower this value, the more marks were removed.
    }
    \item{brand}{
      a numeric vector identifying the brand of erasable pen used.
    }
    \item{treatment}{
      a numeric vector identifying the washing treatment.
    }
  }
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury

  (1991), ``An assessment of the effects of treatment, time, and heat on
  the removal of erasable pen marks from cotton and cotton/polyester
  blend fabrics'', \emph{J. of Testing and Evaluation}, 394-397.
}
\examples{
xmp11.01$brand <- factor(xmp11.01$brand)
xmp11.01$treatment <- factor(xmp11.01$treatment)
plot(strength ~ treatment, data = xmp11.01, col = "lightgray",
     main = "Interaction plot for Example 11.01",
     xlab = "Washing treatment")
lines(strength ~ as.integer(treatment), data = xmp11.01,
      subset = brand == 1, col = 4, type = "b")
lines(strength ~ as.integer(treatment), data = xmp11.01,
      subset = brand == 2, col = 2, type = "b")
lines(strength ~ as.integer(treatment), data = xmp11.01,
      subset = brand == 3, col = 3, type = "b")
legend(3, 0.9, paste("Brand", 1:3), col = c(4, 2, 3), lty = 1)
fm1 <- lm(strength ~ brand + treatment, data = xmp11.01)
anova(fm1)      # compare to table 11.1, page 439
}
\keyword{datasets}
