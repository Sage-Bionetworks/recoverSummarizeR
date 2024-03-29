% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/syn_dir_to_dflist.R
\name{syn_dir_to_dflist}
\alias{syn_dir_to_dflist}
\title{Recursively download Synapse files/folders}
\usage{
syn_dir_to_dflist(synDirID, downloadLocation, dataset_name_filter = NULL)
}
\arguments{
\item{synDirID}{A Synapse ID for a folder entity in Synapse.}

\item{downloadLocation}{The location to download files to.}

\item{dataset_name_filter}{A string used to filter the list of data frames by including only the data frames whose
names contain the specified string.}
}
\value{
A list of data frames. The list is filtered to include only the data frames whose names contain the string
specified by \code{dataset_name_filter}.
}
\description{
\code{syn_dir_to_dflist()} recursively downloads files from a Synapse directory and maintains the original directory
structure, reads the dataset/directory files to data frames, and stores the data frames in a list.
}
\examples{
\dontrun{
parquetDirectoryID <- "syn12345678"
df_list <- syn_dir_to_dflist(parquetDirectoryID, "fitbit")
# df_list will contain only data frames with names containing the string "fitbit"
}
}
