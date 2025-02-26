% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/resample.R
\name{shuffle_df}
\alias{shuffle_df}
\title{Shuffle an AFQ dataframe}
\usage{
shuffle_df(
  df,
  target,
  shuffle_cols = NULL,
  node_col = "nodeID",
  node_group = NULL,
  tract_col = "tractID",
  participant_col = "subjectID",
  sample_uniform = FALSE
)
}
\arguments{
\item{df}{The input dataframe.}

\item{target}{The column name that encodes the metric to model.}

\item{shuffle_cols}{Column names that should be shuffled.}

\item{node_col}{The column name that encodes tract node positions.
Default: "nodeID"}

\item{node_group}{The column name to group the tract node smooth by.
Default: NULL.}

\item{tract_col}{The column name that encodes tract names.
Default: "tractID"}

\item{participant_col}{The column name that encodes participant ID.
Default: "subjectID".}

\item{sample_uniform}{Boolean flag. If TRUE, shuffling should sample
uniformly from the unique values in the columns. If
FALSE, shuffling will shuffle without replacement.}
}
\value{
A shuffled AFQ dataframe
}
\description{
This function shuffles participants' demographic information (i.e., age,
group, sex), thereby destroying correlations between participants' tract
profiles and phenotypic data.
}
\examples{
\dontrun{
df_afq <- read_csv("/path/to/afq/output.csv")
df_shuffled <- shuffle_df(df_afq, target = "dti_fa")}
}
