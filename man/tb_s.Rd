% Generated by roxygen2 (4.0.2): do not edit by hand
\name{tb_s}
\alias{tb_s}
\title{Function to create table that result is sorted descending}
\usage{
tb_s(data, ...)
}
\arguments{
\item{data}{input dataset.}

\item{...}{arguments pass to dplyr::select.}
}
\value{
Sorted table.
}
\description{
Function to create table that result is sorted descending
}
\examples{
tb_s(mtcars,am)
tb_s(mtcars,gear)
}

