% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/download_tools.R
\name{get_grandtab_data}
\alias{get_grandtab_data}
\title{Download GrandTab Data}
\usage{
get_grandtab_data(
  season = c("Winter", "Spring", "Fall", "Late-Fall"),
  parse_fun,
  ...,
  verbose = TRUE
)
}
\arguments{
\item{season}{The season(s) to download data for.}

\item{parse_fun}{A function to parse datasets. Default assumes that
all files in fnames can be parsed using \code{readr::read_csv()}.}

\item{...}{Additional arguments to pass to \code{parse_fun}.}

\item{verbose}{If \code{TRUE}, display descriptive messages.}
}
\value{
a list of dataframes, one element for each specified
\code{season}. The list also includes an attribute "Notes" of same
length and order containing the notes section extracted each
report file.
}
\description{
Download CDFW GrandTab data from SacPass.
}
\examples{
\dontrun{
get_grandtab_data(c("Spring", "Fall"))
}

}
