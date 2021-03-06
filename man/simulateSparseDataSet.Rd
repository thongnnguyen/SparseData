\name{simulateSparseDataSet}
\alias{simulateSparseDataSet}
\title{
Simulates a SparseDataSet
}
\description{
Given a number of features n, and the number of samples per condition,
this returns a SparseDataSet object with random data.  The samples in
each condition follow a negative binomial distribution.

The means for the distribution are a sum of a global and sample specific
vector.  The nonzero elements for these are generated by a gamma
distribution, and the proportion of nonzero are controlled by nzg and
nzs. The resulting matrix will have then at most (nzg + nzs *
nconditions) nonzero elements.
}
\usage{
simulateSparseDataSet(n, samples.per.condition,nzg=.1,nzs=.1)
}
\arguments{
  \item{n}{
    an integer, the number of features to generate
  }
  \item{samples.per.condition}{
    a vector of integers, the number of samples per condition
  }
  \item{nzg}{
    average number of nonzero for the global mu
  }
  \item{nzs}{
    average number of nonzero for the sample mus
  }
}
\value{
a SparseDataSet object
}
\author{
Michael Love
}
\examples{
sds <- simulateSparseDataSet(100, c(5,5))
}
