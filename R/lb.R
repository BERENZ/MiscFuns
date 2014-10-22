#' Function for loading packages
#' 
#' @name lb
#' @param name name of package to be detached.
#' @param ... arguments passed to library and detach
#'
#' @examples
#' lb_l(dplyr,stringr)
#' lb_d(dplyr) 

#' @rdname lb
lb_l <- function(...){
  p <- as.character(match.call(expand.dots=FALSE)[[2]])
  wyn <- lapply(p,library,character.only=T)
}

#' @rdname lb
lb_d = function(name,...){
  p <- eval(paste0('package:',substitute(name)))
  detach(name = p,unload=T,character.only=T,...)
}
