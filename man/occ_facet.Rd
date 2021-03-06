% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/occ_facet.R
\name{occ_facet}
\alias{occ_facet}
\title{Facet GBIF occurrences}
\usage{
occ_facet(facet, facetMincount = NULL, ...)
}
\arguments{
\item{facet}{(character) a character vector of length 1 or greater. Required.}

\item{facetMincount}{(numeric) minimum number of records to be included
in the faceting results}

\item{...}{Further named curl parameters (see xxx), or facet parameters,
such as for paging based on each facet variable, e.g., country.facetLimit}
}
\value{
A list of tibbles (data.frame's) for each facet (each element of
the facet parameter).
}
\description{
Facet GBIF occurrences
}
\details{
All fields can be faceted on except for last "lastInterpreted",
"eventDate", and "geometry"

If a faceted variable is not found, it is silently dropped, returning
nothing for that query
}
\examples{
\dontrun{
occ_facet(facet = "country")

# facetMincount - minimum number of records to be included
#   in the faceting results
occ_facet(facet = "country", facetMincount = 30000000L)
occ_facet(facet = c("country", "basisOfRecord"))

# paging with many facets
occ_facet(
  facet = c("country", "basisOfRecord", "hasCoordinate"),
  country.facetLimit = 3,
  basisOfRecord.facetLimit = 6
)

# paging
## limit
occ_facet(facet = "country", country.facetLimit = 3)
## offset
occ_facet(facet = "country", country.facetLimit = 3,
  country.facetOffset = 3)
}
}
\seealso{
\code{\link{occ_search}} also has faceting ability, but
can include occurrence data in addition to facets
}

