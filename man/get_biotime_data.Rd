% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_biotime_data.R
\name{get_biotime_data}
\alias{get_biotime_data}
\title{Get a cleaned BioTime dataset}
\usage{
get_biotime_data(dataset_id, path = get_default_data_path())
}
\arguments{
\item{dataset_id}{the dataset index}

\item{path}{where to load the raw data files from}
}
\value{
list of abundance, covariates, and metadata
}
\description{
Gets a prepped BioTime dataset (as a list of abundance,
covariates, and metadata) for a specified dataset_id. First run
\code{\link{prepare_biotime_data}} to create these files from the raw
BioTime database. If the files are not found, then \code{NULL} is returned.
Original data found here http://biotime.st-andrews.ac.uk/home.php
}
\examples{
\dontrun{
  get_biotime_data(dataset_id = 321)
}
}
