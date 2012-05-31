\name{xmp13.04}
\alias{xmp13.04}
\docType{data}
\title{data from Example 13.4}
\description{
  The \code{xmp13.04} data frame has 11 rows and 2 columns on the
  ethylene content of lettuce seeds as a function of exposure time to an
  ethylene absorbent.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{time}{
      exposure to an ethylene absorbent (min).
    }
    \item{Ethylene}{
      ethylene content of the seeds (nL/g dry wt).
    }
  }
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury

  (1972), ``Ethylene synthesis in lettuce seeds: Its physiological
  significance'', \emph{Plant Physiology}, 719-722.
}
\examples{
plot(Ethylene ~ time, data = xmp13.04,
     xlab = "Exposure time (min)",
     ylab = "Ethylene content (nL/g dry wt)",
     main = "Compare to Figure 13.5 (a), page 556")
fm1 <- lm(Ethylene ~ time, data = xmp13.04)
abline(fm1)
plot(resid(fm1) ~ xmp13.04$time)
abline(h = 0, lty = 2)
title(main = "Compare to Figure 13.5 (b), page 556")
title(sub = "Using raw residuals instead of standardized")
fm2 <- lm(log(Ethylene) ~ time, data = xmp13.04)
plot(resid(fm2) ~ xmp13.04$time)
abline(h = 0, lty = 2)
title(main = "Compare to Figure 13.6 (a), page 557")
title(sub = "Using raw residuals instead of standardized")
summary(fm2)
plot(exp(fitted(fm2)) ~ xmp13.04$Ethylene)
}
\keyword{datasets}
