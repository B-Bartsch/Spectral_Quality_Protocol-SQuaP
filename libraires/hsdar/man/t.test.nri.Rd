\name{t.test}
\alias{t.test.nri}
\alias{t.test,Nri-method}
% \alias{t.test_nri.formula}
% \alias{print.ttestnri}
\title{ t-test for nri values}
\description{
Performs Student's t-tests for normalized ratio index values.
}

\usage{
\S4method{t.test}{Nri}(x, ...)

% \method{t.test_nri}{formula}(formula, ...)
%\method{print}{ttestnri}(x, ...)
}
\arguments{
  \item{x}{
    Object of class \code{'nri'}.
  }
%   \item{formula}{
%     A formula of the form lhs ~ rhs where lhs is object of class 'nri' and rhs is a factor with two levels giving the corresponding groups. Note that the parameter data may be used to specify a data.frame or a speclib containing the grouping factor.
%   }
  \item{...}{
    Arguments to be passed to \code{\link{t.test}}.
  }
}

\value{
  An object of class "data.frame"
}
\author{ Lukas Lehnert & Hanna Meyer }
\seealso{
 \code{\link{t.test}}, \code{\link{cor.test,Nri-method}}, \code{\linkS4class{Nri}} 
}
\examples{
%   \dontrun{
data(spectral_data)


## Calculate nri-values for WorldView-2-8
spec_WV <- spectralResampling(spectral_data, "WorldView2-8",
                              response_function = FALSE)
nri_WV <- nri(spec_WV, recursive = TRUE)

## Perform t.tests between nri-values of both sites 
season <- SI(spec_WV)$season
ttestres <- t.test(x = nri_WV, y = season, alternative = "two.sided")
ttestres

## Plot p.values of t.tests
plot(ttestres)
%   }
}
