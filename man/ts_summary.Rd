% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/summary_stats.R
\name{ts_summary}
\alias{ts_summary}
\title{Summarize a time series}
\usage{
ts_summary(data, times = NULL, effort = NULL,
  obs_per_effort = !is.null(effort),
  interp_method = forecast::na.interp, include_spp_correlations = TRUE,
  ...)
}
\arguments{
\item{data}{a vector, matrix, or data.frame of \code{numeric} observations
(within columns) across times (within rows).}

\item{times}{\code{numeric} or \code{Date} vector of timestamps of the
observations.}

\item{effort}{\code{numeric} vector of effort associated with the
observations.}

\item{obs_per_effort}{\code{logical} indicator if \code{obs} should be
corrected for \code{effort} before summaries are done.}

\item{interp_method}{\code{character} a function used to interpolate
\code{obs}. Defaults to \code{\link[forecast]{na.interp}}.}

\item{include_spp_correlations}{whether to include the calculations of
between-species correlations}

\item{...}{additional arguments to be passed to \code{\link{temp_autocor}}}
}
\value{
\code{ts_summary}: \code{list} of number of species, number of
observations, summaries of the variables, the times, the effort, the
species richness, total observation, and the among-species correlation.
}
\description{
\code{ts_summary} creates a summary of a community time series
dataset. The summary contains community-level statistics, including total
number of observations, species richness, cross-correlations; as well as
summary statistics on the individual populations that make up the
community.

Some aspects of the summaries depend on \code{times}, which should be a
vector of the time index associated with the time series; and
\code{effort}, which should be a vector of the sampling effort.
\code{obs_per_effort} is an optional argument for correcting abundance
based on effort; by default, it checks if \code{effort} is NULL.
Interpolation of missing values for autocorrelation calcuations (if
needed) is done via \code{interp_method}
}
