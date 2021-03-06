% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/uas_toc.R
\name{uas_toc}
\alias{uas_toc}
\title{Generate a table of contents for image collection reports}
\usage{
uas_toc(
  html_reports,
  output_dir = ".",
  output_fn = "index.html",
  gather = NULL,
  toc_title = "UAS Image Collections",
  header_html = NULL,
  footer_html = NULL,
  overwrite = FALSE,
  open_toc = FALSE,
  quiet = FALSE
)
}
\arguments{
\item{html_reports}{File names with path of HTML Image Collection summaries}

\item{output_dir}{Output directory}

\item{output_fn}{Output file name}

\item{gather}{Subdirectory where HTML files will be copied}

\item{toc_title}{Title to use for the Table of Contents}

\item{header_html}{HTML file name to use as a page header}

\item{footer_html}{HTML file name to use as a page footer}

\item{overwrite}{Overwrite existing file, logical}

\item{open_toc}{Open the table of contents in a browser when done, logical}

\item{quiet}{Suppress messages, logical}
}
\description{
Generate a table of contents for image collection reports
}
\details{
This function generates a HTML master table of contents for a set
of HTML UAS Image Collection reports created by \code{\link{uas_report}}.

\code{htmls_reports} should be a vector of HTML filenames, including the full path. Reports will
be appear in the Table of Contents in the same order. To link to the reports, R will attempt
to create relative paths from the \code{output_dir} to the locations
of the \code{htmls_reports}. At a minimum, this requires \code{output_dir} and
\code{htmls_reports} to be on the same volume. Preferably \code{output_dir} will be a parent
directory of \code{htmls_reports}. If your HTML reports are scattered across many directories,
consider using \code{gather} which will put them all in one place.

\code{gather} specifies an optional sub-directory of \code{output_dir} where the HTML files
in \code{htmls_reports} (and any associated PNG files) will be copied. Links in the TOC
will then point to the copies of the HTML files in \code{gather}. If the \code{gather} sub-directory
does not already exist, R will attempt to create it.

\code{header_html} and \code{footer_html} allow you to specify a page header and footer, i.e., to
add branding elements to the TOC.
}
\seealso{
\code{\link{uas_report}}
}
