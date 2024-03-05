This package contains many of the vignettes for the survival 
package, along with some optional datasets used in those vignettes. 
Since survival is a recommended package, the documentation is required to be 
completely "vanilla".  In particular, the survival package vignettes use 
Sweave rather than knitr or markdown, and no other packages outside the 
base + recommended set can be referenced.  Splitting vignettes into this 
package overcomes this, and also allowed the survival package itself to 
be a smaller object.
