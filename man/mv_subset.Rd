% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/multivariable_mr.R
\name{mv_subset}
\alias{mv_subset}
\title{Perform multivariable MR on subset of features}
\usage{
mv_subset(mvdat, features = mv_lasso_feature_selection(mvdat),
  intercept = FALSE, instrument_specific = FALSE,
  pval_threshold = 5e-08, plots = FALSE)
}
\arguments{
\item{mvdat}{Output from \code{mv_harmonise_data}}

\item{features}{Dataframe of features to retain, must have column with name 'exposure' that has list of exposures tor etain from mvdat. By default = mvdat_lasso_feature_selection(mvdat)}

\item{intercept}{Should the intercept by estimated (TRUE) or force line through the origin (FALSE, dafault)}

\item{instrument_specific}{Should the estimate for each exposure be obtained by using all instruments from all exposures (FALSE, default) or by using only the instruments specific to each exposure (TRUE)}

\item{plots}{Create plots? FALSE by default}

\item{pval_threshold=5e-8}{P-value threshold to include instruments}
}
\value{
List of results
}
\description{
Step 1: Select features (by default this is done using LASSO feature selection)
Step 2: Subset the mvdat to only retain relevant features and instruments
Step 3: Perform MVMR on remaining data
}
