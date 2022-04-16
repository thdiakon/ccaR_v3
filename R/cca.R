#' @title Calculates the total Corrected Covered Area (CCA) Index
#'
#' @description This package calculates the Corrected Covered Area (CCA) index. The measure for assessing the overall degree of overlap in an OOSR. It is taking as input the citation matrix.
#'
#' @param cm A dataframe for the citation matrix
#'
#' @return res
#'
#' @example man/examples/example3.R
#'
#' @export
cca <- function(cm){

  cm <- cm[, -1]

  cm <- cm[, order(colnames(cm))]

  studies<-nrow(cm)
  reviews<-ncol(cm)

  N <- sum(cm, na.rm = T)
  r <- nrow(cm)
  c <- ncol(cm)
  X <- sum(is.na(cm))
  CCA_Proportion <- (N-r)/((r*c)-r-X)
  CCA_Percentage <- round(CCA_Proportion*100, digits = 1)


  if (sum(is.na(cm)) == 0) {
    res <- data.frame(reviews, N, r, c, CCA_Proportion, CCA_Percentage, stringsAsFactors=FALSE)

  } else {
    res <- data.frame(reviews, N, r, c, X, CCA_Proportion, CCA_Percentage, stringsAsFactors=FALSE)
    names(res)[names(res) == 'X'] <- 'Structural_zeros'
    message("the CCA formula has been adjusted for structural zeros")
  }

      return(res)

}



