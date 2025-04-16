
<!-- README.md is generated from README.Rmd. Please edit that file -->

# projecthelpers

<!-- badges: start -->

[![R-CMD-check](https://github.com/TeroJii/projecthelpers/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/TeroJii/projecthelpers/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of projecthelpers is to provide convenience functions which aim
to make common tasks, such as defining the project data folder path,
easier.

## Installation

You can install the development version of projecthelpers from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("TeroJii/projecthelpers")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(projecthelpers)
## basic example code
get_datapath(data_folder = "Data", use_dotenv = TRUE)
```
