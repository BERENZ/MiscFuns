#' Function to create dummy variables from strings
#' 
#' @name str_dummy
#' @param var character vector that will be coverted to dummy variables.
#' @param strs charcter vector that contains values that will create columns.
#' @param ... to be passed to grepl function
#' @return returns a data.frame with 0-1 values.
#' @examples
#' v1 <- c('A,B','A,B,C','C','B,A','C,A')
#' str_dummy(v1,c('A','B','C'))

str_dummy <- function(var,strs,...) {
  
  if (class(var)!='character'){
    message('Converting to character')
    strs <- as.character(strs)
  }
  res <- sapply(X = strs,
                FUN = function(x) {
                  grepl(x,var,...)*1
                })
  
  res <- as.data.frame(res)
  return(res)
}