
<!-- README.md is generated from README.Rmd. Please edit that file -->

# folgeR

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/folgeR)](https://CRAN.R-project.org/package=folgeR)
[![R-CMD-check](https://github.com/vgherard/folgeR/workflows/R-CMD-check/badge.svg)](https://github.com/vgherard/folgeR/actions)
[![Codecov test
coverage](https://codecov.io/gh/vgherard/folgeR/branch/master/graph/badge.svg)](https://codecov.io/gh/vgherard/folgeR?branch=master)
<!-- badges: end -->

Client for the Folger Shakespeare Library API.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("vgherard/folgeR")
```

## Example

``` r
library(folgeR)

head(folg_plays())
#> All's Well That Ends Well      Antony and Cleopatra            As You Like It 
#>                     "AWW"                     "Ant"                     "AYL" 
#>      The Comedy of Errors                Coriolanus                 Cymbeline 
#>                     "Err"                     "Cor"                     "Cym"
aww <- folg_text("AWW")
strtrim(aww, 499)
#> [1] "In delivering my son from me, I bury a second husband. And I in going, madam, weep o’er my father’s death anew; but I must attend his Majesty’s command, to whom I am now in ward, evermore in subjection. You shall find of the King a husband, madam; you, sir, a father. He that so generally is at all times good must of necessity hold his virtue to you, whose worthiness would stir it up where it wanted rather than lack it where there is such abundance. What hope is there of his Majesty’s amendment?"
```
