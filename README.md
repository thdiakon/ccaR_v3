# ccaR <img src="https://user-images.githubusercontent.com/43422937/155933906-a15d2cf1-08c6-46e9-bb75-e19b69a229ea.png" align="right" width="120" />


## Overview

ccaR package provides functions for assessing and depicting primary study overlap across multiple reviews. The functions may be useful for methodologists and overview authors in exploring and communicating the degree of overlap in overview of reviews.

## Installation

``` r
# You can download the development version of the package from github:
devtools::install_github('thdiakon/ccaR_v3')

```

## Read the data

```
# Read the data
DATASET <- readr::read_delim(system.file('extdata','test.csv', package = 'ccaR'), delim = ";")

```

## Overall CCA

```
# Calculate the overall CCA (for the entire ciattion matrix)
cca(DATASET)
```



## CCA Table

```
# Create a summary table with pairwise and overall CCA 
tb <- cca_table(DATASET)
```

<img src="man/figures/cca_table.PNG" align="center" width="620" />



## Visualization of the pairwise CCA(%) with a heatmap

```
# Create a pairwise heatmap with CCA(%)
cca_heatmap(DATASET)
```

<img src="man/figures/README-plot-1.PNG" align="center" width="620" />



## Attribution
If package ccaR (or code from this package) is used for investigating overlap of primary studies between reviews, please cite the following manuscript:

Bougioukas KI, Vounzoulaki E, Mantsiou CD, Savvides ED, Karakosta C, Diakonidis T, et al. Methods for depicting overlap in overviews of systematic reviews: An introduction to static tabular and graphical displays. J Clin Epidemiol 2021;132:34–45. doi:https://doi.org/10.1016/j.jclinepi.2020.12.004.

