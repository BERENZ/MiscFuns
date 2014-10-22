#' Function to count missing data in input dataset
#' 
#' Function that returns information bout missing values, 
#' characters that have 0 length as well as number of 
#' unique values and numer of observations
#' 
#' @name check_miss
#' @param data inputdataset.
#' @param ... arguments pass to dplyr (in progress).
#' @return data.frame with number of NA (N_miss), number of 0 length characters (N_0_char), number of unique values (N_unique) and number of observations (N).
#' @examples
#' check_miss(mtcars)

check_miss = function(data,...) {
  
  tab <- data %>% 
    
    summarise_each(funs(.na_sum,
                        .nchar_sum,
                        .n_unique,
                        n())) %>%
    
    matrix(ncol=4,
           dimnames=list(
             names(data),
             c('N_miss','N_0_char','N_unique','N')
           )) %>%
       as.data.frame()
  
  return(tab)
}

.na_sum <- function(x) {
  return(sum(is.na(x)))
}

.nchar_sum <- function(x) {
  return(sum(str_length(x)==0))
}


.n_unique <- function(x) {
  return(length(unique(x)))
}

