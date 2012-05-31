\name{xmp11.06}
\alias{xmp11.06}
\docType{data}
\title{data from Example 11.6}
\description{
  The \code{xmp11.06} data frame has 24 rows and 3 columns.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{Resp}{
      a numeric vector of the mean number of responses emitted by each
      subject during single and compound stimuli presentations over a
      4-day period.
    }
    \item{Stimulus}{
      a numeric vector of stimulus levels.  These levels correspond to
      L1 (moderate intensity light), L2 (low intensity light), T (tone),
      L1+L2, L1+T, and L2+T.
    }
    \item{Subject}{
      a numeric vector identifying the subject (rat).
    }
  }
}
\source{
  Devore, J. L. (2003) \emph{Probability and Statistics for Engineering
    and the Sciences (6th ed)}, Duxbury

  (1971), ``Compounding of discriminative stimuli from the same and
  different sensory modalities'', \emph{J. Experimental Analysis and
    Behavior}, 337-342
}
\examples{
plot(Resp ~ Stimulus, data = xmp11.06, col = "lightgray",
     main = "Data from Example 11.6",
     ylab = "Mean number of responses")
for (i in seq(along = levels(xmp11.06$Subject))) {
    attach(xmp11.06[ xmp11.06$Subject == i, ])
    lines(Resp ~ as.integer(Stimulus), col = i+1, type = "b")
}
legend(0.8, 95, paste("Subject", levels(xmp11.06$Subject)),
       col = 1 + seq(along = levels(xmp11.06$Subject)),
       lty = 1)
fm1 <- lm(Resp ~ Stimulus + Subject, data = xmp11.06)
anova(fm1)     # compare to Table 11.5, page 443
attach(xmp11.06)
means <- sort(tapply(Resp, Stimulus, mean))
means
diff(means)    # successive differences
qtukey(0.95, nmeans = 6, df = 15)  #for Tukey comparisons
detach()
}
\keyword{datasets}
