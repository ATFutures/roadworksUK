% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rw_import_elgin.R
\name{rw_import_elgin_htdd}
\alias{rw_import_elgin_htdd}
\title{Import Elgin HDDT road works data}
\usage{
rw_import_elgin_htdd(file_path)
}
\arguments{
\item{file_path}{where the input data is stored, e.g. C:/eton-file.csv}
}
\description{
This function imports data that has already been downloaded from
http://downloads.roadworks.org/
}
\examples{
\dontrun{
# f = system.file()
d = "N:/Earth&Environment/Research/ITS/Research-1/CyIPT/roadworksUK/data/HDDT v2/"
list.files(d)
f = "elgin.htdd.export.20180601-20180630.csv.gzip"
file_path = file.path(d, f)
file.exists(file_path) # check the file is there
d_raw = read.csv(file_path, stringsAsFactors = FALSE)
names(d_raw)
summary(as.factor(d_raw$publisher_name))
d_raw_kent = d_raw[d_raw$publisher_name == "Kent County Council", ]
kent10 = d_raw_kent[sample(nrow(d_raw_kent), 10), ]
write.csv(d_kent10, "inst/extdata/kent10.csv")
R.utils::gzip("inst/extdata/kent10.csv", remove = FALSE)
}
file_path = system.file("extdata", "kent10.csv.gz", package = "roadworksUK")
file.exists(file_path)
kent10 = rw_import_elgin_htdd(file_path = file_path)
ncol(kent10) # 90 columns
# View(kent10) # view the data
kent10$i__location_point[1]
kent10$i__location_bng[3]
}
