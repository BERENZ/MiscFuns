#' Function to create table that result is sorted descending
#' 
#' @param data input dataset.
#' @param ... arguments pass to dplyr::select.
#' @return Sorted table.
#' @examples 
#' tb_s(mtcars,am)
#' tb_s(mtcars,gear)

tb_s <- function(data,...) {
  res <- data %>%
    group_by(...) %>%
    summarise(N=n()) %>%
    arrange(desc(N))
  return(res)
}