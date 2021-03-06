% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/uas_cache.R
\name{uas_getcachedir}
\alias{uas_getcachedir}
\alias{uas_setcachedir}
\title{Manage Cache Directory}
\usage{
uas_getcachedir(quiet = FALSE, create_default = FALSE)

uas_setcachedir(cache_dir, write = FALSE, quiet = FALSE)
}
\arguments{
\item{quiet}{Suppress messages}

\item{create_default}{Create a default directory if needed}

\item{cache_dir}{The directory for  cached EXIF data (must exist)}

\item{write}{Write directory location to .Renviron}
}
\description{
View and set the directory where extracted EXIF data are cached
}
\details{
Extracting exif data from a large number of images can take awhile. To avoid having
to do this more than once, the results can be saved or cached to a directory of your choice.
The next time you call \code{\link{uas_info}}, R will first look to see if exif data for that
image collection has already been generated, and if so use it instead of running
exiftool again.

Cached results are saved as native R objects. File names encode the name of the
image directory as well as the total number of images and file size. Hence if images are
removed or added from a directory, any cached results will be nullified and exiftool will
run again. The cached data does not include supplemental metadata, such as the
collection name or data URI.
}
\section{Functions}{
\itemize{
\item \code{uas_setcachedir}: Set cache directory
}}

\seealso{
\code{\link{uas_info}}
}
