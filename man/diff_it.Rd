% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rutils.R
\name{diff_it}
\alias{diff_it}
\title{Calculate the row differences of a \code{numeric} vector or matrix.}
\usage{
diff_it(in_put, lag = 1)
}
\arguments{
\item{in_put}{a \code{numeric} vector or matrix.}

\item{lag}{integer equal to the number of periods of lag.}
}
\value{
vector or matrix with the same dimensions as the input object.
}
\description{
Calculate the row differences of a \code{numeric} vector or matrix.
}
\details{
Calculates the row differences between rows that are \code{lag} rows
  apart. The leading or trailing stub periods are padded with \code{zeros}.
  Positive \code{lag} means that the difference is calculated as the current
  row minus the row that is \code{lag} rows above. (vice versa negative
  \code{lag}).  This also applies to vectors, since they can be viewed as
  single-column matrices.
}
\examples{
# diff vector by 2 periods
diff_it(1:10, lag=2)
# diff matrix by negative 2 periods
diff_it(matrix(1:10, ncol=2), lag=-2)
}
