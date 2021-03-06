% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gitrd_read_zip_file.R
\name{gitrd.read.zip.file}
\alias{gitrd.read.zip.file}
\title{Reads a single zip file downloaded from Bovespa}
\usage{
gitrd.read.zip.file(my.zip.file, folder.to.unzip = tempdir(), id.type,
  type.fin.report)
}
\arguments{
\item{my.zip.file}{Full path to zip file}

\item{folder.to.unzip}{Folder to unzip files (default = tempdir())}

\item{id.type}{The type of file structure ('after 2011' or 'before 2011')}

\item{type.fin.report}{Peridodicy of fin data ('itr' - quarterly or 'dfp' - annual)}
}
\value{
A list with several dataframes containing financial statements
}
\description{
Reads a single zip file downloaded from Bovespa
}
\examples{

my.f <- system.file('extdata/434_ARAC_2008-09-30.zip', package = 'GetITRData')

my.l <- gitrd.read.zip.file(my.f, id.type = 'before 2011', type.fin.report = 'itr')
print(my.l)
}
