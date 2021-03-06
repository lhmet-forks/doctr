% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/is.R
\name{is_character}
\alias{is_character}
\title{Check if x$data is a character variable}
\usage{
is_character(x, min_unq = 0, max_unq = Inf, max_na = 0.9,
  least_frec_cls = 0)
}
\arguments{
\item{x}{List with data, result, and any errors already found}

\item{min_unq}{Minimum number of unique classes x$data can have}

\item{max_unq}{Maximum number of unique classes x$data can have}

\item{max_na}{Fraction of x$data that can be NA}

\item{least_frec_cls}{Minimum fraction of total represented by least frequent class}
}
\description{
Check if x$data is a character variable
}
