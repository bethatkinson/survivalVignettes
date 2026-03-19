\name{spe}
\alias{spe}
\docType{data}
\title{
Survival after Serum Protein Electrophoresis (SPE) test
}
\description{
This data is used in the poisson vignette.  Monoclonal gammopathy of undetermined significance (MGUS) is detected from the serum protein electrophoresis (SPE test), which is ordered by a physician for a number of reasons.  This dataset contains survival information for 23,294 Southeastern Minnesota residents who had the SPE test ordered between 1971 and 1994. Of those, 1384 were diagnosed with MGUS at Mayo Clinic.
}
\usage{data("spe")}
\format{
  A data frame with 23294 observations on the following 7 variables.
  \describe{
    \item{\code{id}}{subject id}
    \item{\code{age}}{age in years for when the test was ordered. Ages >85 are summarized as 85.}
    \item{\code{sex}}{male or female}
    \item{\code{mgus}}{1=MGUS diagnosis}
    \item{\code{testyr}}{test year}
    \item{\code{futime}}{days from test to last follow-up}
    \item{\code{death}}{1=follow-up is until death}
  }
}
\details{
Plasma cells are responsible for manufacturing immunoglobulins, an important part of the immune defense. At any given time there are estimated to be about 106106 different immunoglobulins in the circulation at any one time. When a patient has a plasma cell malignancy the distribution will become dominated by a single isotope, the product of the malignant clone, visible as a spike on a serum protein electrophoresis. Monoclonal gammopathy of undetermined significance (MGUS) is the presence of such a spike, but in a patient with no evidence of overt malignancy. This dataset is an anonymized version of the data from approximately 1971 to 1994. Some values have been changed slightly.
}
\source{
Mayo Clinic data courtesy of Dr. Robert Kyle.
}
\references{
R Kyle, Benign monoclonal gammopathy – after 20 to 35 years of follow-up, Mayo Clinic Proc 1993; 68:26-36. 
}
\examples{
library(survival)
sfit <- survfit(Surv(futime,death) ~ mgus, data=spe)
print(sfit, scale=365) 
}
\keyword{datasets}
