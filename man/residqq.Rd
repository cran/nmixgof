% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rqRes.r
\name{residqq}
\alias{residqq}
\title{Qq plot of randomized quantile residuals against standard normal quantiles}
\usage{
residqq(umFit, type = "site-sum", main = "Residual qq plot",
  plotLine = TRUE, ...)
}
\arguments{
\item{umFit}{An object of class \link[unmarked]{unmarkedFit} from a model fitted using \link[unmarked]{pcount}.}

\item{type}{The type of randomized quantile residual to plot. One of 'site-sum' or 'observation'.}

\item{main}{Plot label.}

\item{plotLine}{If true, the identity line is added to the plot.}

\item{...}{Further arguments passed to qqnorm.}
}
\value{
A list with x and y coordinates of the qq plot, see \link[stats]{qqnorm}.
}
\description{
Qq plot of randomized quantile residuals against standard normal quantiles
}
\examples{
library(unmarked)
umf = unmarkedFramePCount(y = shoveler$y, obsCovs = shoveler$obs, siteCovs = shoveler$site)
fmP = pcount(~scale(date) + scale(reedcover) ~ scale(log(water)) + scale(latitude), 
      data = umf, K = 80)
residqq(fmP, "site-sum")
residqq(fmP, "observation")
}
