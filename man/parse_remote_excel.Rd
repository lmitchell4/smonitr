% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/download_tools.R
\name{parse_remote_excel}
\alias{parse_remote_excel}
\title{Parse Remotely-Hosted Excel File}
\usage{
parse_remote_excel(path, ...)
}
\arguments{
\item{path}{The URL or FTP directory of the Excel file.}

\item{...}{Other arguments to pass to \code{\link[readxl:read_excel]{readxl::read_excel()}}}
}
\value{
A dataframe.
}
\description{
Helper function for parsing an Excel file hosted on a website
or FTP server.
}
\note{
This function will be defunct once \code{readxl::read_excel()}
\href{https://github.com/tidyverse/readxl/issues/278}{supports reading from more general inputs}.
}
\examples{
\dontrun{
parse_remote_excel(paste0("https://github.com/",
    "InteragencyEcologicalProgram/Status-and-Trends/blob/",
    "9d1ba8ec3f475e96dbdd7788b45c26fb0fc55b0b/data/",
    "EMPMysidBPUEMatrixAug2019.xlsx?raw=true"),
  sheet = "MysidBPUEMatrix1972-2018", guess_max = 100000)
}

}
