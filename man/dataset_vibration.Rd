% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compute_vibrations.R
\name{dataset_vibration}
\alias{dataset_vibration}
\title{Vibration for dataset}
\usage{
dataset_vibration(
  subframe,
  primary_variable,
  model_type,
  features_of_interest,
  max_vibration_num,
  proportion_cutoff,
  cores,
  max_vars_in_model,
  family,
  ids,
  strata,
  weights,
  nest
)
}
\arguments{
\item{subframe}{List of length 2. Dataframes containing a single datasets independent and dependent data.}

\item{primary_variable}{The column name from the independent_variables tibble containing the key variable you want to associate with disease in your first round of modeling (prior to vibration). For example, if you are interested fundamentally identifying how well age can predict height, you would make this value a string referring to whatever column in said dataframe refers to "age."}

\item{model_type}{Specifies regression type -- "glm", "survey", or "negative_binomial". Survey regression will require additional parameters (at leaset weight, nest, strata, and ids). Any model family (e.g. gaussian()), or any other parameter can be passed as an additional argument to this function.}

\item{features_of_interest}{Feature to vibrate over.}

\item{max_vibration_num}{Maximum number of vibrations (default=50000).}

\item{proportion_cutoff}{Float between 0 and 1. Filter out dependent features that are this proportion of zeros or more (default = 1, so no filtering done).}

\item{cores}{Number of threads.}

\item{max_vars_in_model}{Maximum number of variables allowed in a single fit in vibrations. In case an individual has many hundreds of metadata features, this prevents models from being fit with excessive numbers of variables. Modifying this parameter will change runtime for large datasets. For example, just computing all possible models for 100 variables is extremely slow. (default = 20)}

\item{family}{GLM family (default = gaussian()). For help see help(glm) or help(family).}

\item{ids}{Name of column in dataframe pecifying cluster ids from largest level to smallest level. Only relevant for survey data. (Default = NULL).]}

\item{strata}{Name of column in dataframe with strata. Only relevant for survey data. (Default = NULL).]}

\item{weights}{Name of column containing sampling weights.}

\item{nest}{If TRUE, relabel cluster ids to enforce nesting within strata.}
}
\description{
Run vibrations for all features in a dataset
}
\keyword{association}
\keyword{initial}
\keyword{regression,}
