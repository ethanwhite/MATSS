% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_bbs_data.R
\name{get_bbs_route_region_data}
\alias{get_bbs_route_region_data}
\title{Get cleaned BBS data}
\usage{
get_bbs_route_region_data(route, region, path = get_default_data_path())
}
\arguments{
\item{route}{Route number}

\item{region}{Region number}

\item{path}{where to load the raw data files from}
}
\value{
list of abundance, covariates, and metadata
}
\description{
Gets prepped BBS data (as a list of abundance, covariates, and
metadata) for a specified route and region. First run \code{prepare_bbs_data}
to create these files from the raw BBS data tables. If the files are not
found, then \code{NULL} is returned.
}
