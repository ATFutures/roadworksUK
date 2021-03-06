% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rw_import_elgin.R
\name{rw_import_elgin_ed}
\alias{rw_import_elgin_ed}
\title{Import Elgin ED road works data}
\usage{
rw_import_elgin_ed(file_path)
}
\arguments{
\item{file_path}{path to csv file or compressed file}
}
\description{
This function imports data that has already been downloaded from
http://downloads.roadworks.org/
}
\details{
see base::read.csv
}
\examples{
\dontrun{
zip_file = "data/01.zip"
d = rw_import_scot(zip_file)
ncol(d) # 74 columns
}
}
