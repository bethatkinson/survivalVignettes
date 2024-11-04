\name{amyloid}
\alias{amyloid}
\alias{amyloidmodel}
\docType{data}
\title{
Survival with amyloidosis
}
\description{
  This pair of data sets is used in the external validation vignette. The
  \code{amyloidmodel} dataset contains survival curves from four
  studies, the \code{amyloid} data survival times and risk scores for
  1005 subjects.
}
\usage{
amloid
amyloidmodel
}
\format{
  A data frame with 1005 observations on the following 8 variables.
  \describe{
    \item{\code{age}}{age in years}
    \item{\code{month}}{survival time in months}
    \item{\code{status}}{0= censored, 1= death}
    \item{\code{number.organs}}{number of involved organ systems}
    \item{\code{r2004}}{patient stage based on the 2004 model}
    \item{\code{r2012}}{patient stage based on the 2012 model}
    \item{\code{r2013}}{patient stage based on the 2013 model}
    \item{\code{r2015}}{patient stage based on the 2015 model}
    \item{\code{year}}{diagnosis year}
  }
\format{
  A data frame with 832 observations on the following 4 variables.
  \describe{
    \item{\code{study}}{which study: 2004, 2012, 2013 or 2015}
    \item{\code{stage}}{disease stage}
    \item{\code{month}}{months from study entry}
    \item{\code{survival}}{predicted survival}
  }
}
\details{
  The model assement is found in Muchtar (2019), and used as an example
  in a package vignette.  Patients with biopsy proven systemic light chain
  (AL) amyloidosis seen at the Mayo Clinic from 2003-01-01 to 31-08-2015
  were screened for the study.  The final study cohort includes all
  those without prior chemotherapy and with the necessary baseline data
  to assign patient stage, using each of the four systems.

  The survival curves from the staging systems were (impefectly)
  digitized from the relevant papers.  The 2013 publication is from
  a trial involving only stage 2 subjects and divided them as IIIa, IIIb
  and IIIc (stage 2-4 in our notation). 
  The 2015 paper is also from a clinical
  trial and has 0/30 deaths in the stage 0 subjects.  They label the
  stages as I, II, IIIa and IIIb where we have used 0-3 for consistency
  with the original 2004 system.
}
\references{
E Muchtar, T Therneau, D Larson, M Gertz, M Lacy, F buadi, D Dingli, S
Hayman, P Kapoor, W Gonsalves, T Kourelis, R Warsame, A Fonder, M Hobbs,
Y Hwa, N Leung, S Russell, J Lust, Y Lin, R Go, S Zelderust, R Kyle, S V
Rajkumar, S K Kumar, A Dispezieri. Comparitive analysis of staging
systems in AL amyloidosis.  Leukemia (2019) 33:811-814.
doi:10.1038/s41375-018-0370-z

A Dispenzieri 2004, doi:10.1200/JCO.2004.03.029
S Kumar 2012, doi:10.1200/JCO.2011.38.5724
A Wechalekar 2013, doi:10.1182/blood-2012-12-473066
M Palladini 2015, doi: 10.1182/blood-2015-01-620302
}
\examples{
sfit <- survfit(Surv(months, status) ~ r2012, amyloid)
plot(sfit, lty=1:4, col=1:4, lwd=2, log=TRUE,
     xlab="Months from diagnosis", ylab="Survival")
}
\keyword{datasets}
