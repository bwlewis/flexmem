% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exm.r
\name{exm_cow}
\alias{exm_cow}
\title{Set and return the exm fork copy on write behavior.}
\usage{
exm_cow(value = c("copy on write", "shared", "duplicate"))
}
\arguments{
\item{value}{copy on write setting}
}
\description{
Control how forked child processes see memory defined by the parent process.
The default value is 'copy on write' which behaves similarly to the usual
(non-exm) fork behavior--writes to memory regions by child processes are
stored in RAM by each child process page by page using a copy on write
method. Alternatively, use 'duplicate' if you expect a forked child process
to make lots of changes that could exceed available system RAM. The
'duplicate' option copies out of core backing files and sets up new
memory mappings in the child process--it incurs start up overhead. The
'shared' option gives shared read/write, out of core access to parent and child
processes. However, it should be avoided as it can lead to memory corruption
between processes due to unexpected modification of R objects.
}
\examples{
# Make children duplicate memory
\dontrun{
exm_cow("duplicate")
}
}
