#' Is this a leap year?
#'
#' @param num a number, or a string that contains a number
#'
#' @return TRUE or FALSE on whether or not it is a leap year
#'
#' @export
#'
#' @examples
#' # example code
#' is_leap(1000) # returns TRUE
#' is_leap(11) # returns FALSE
#' is_leap("The year is 1000 CE") # returns TRUE
#'
#' \dontrun{
#' is_leap(mtcars)
#' }
#'
is_leap <- function(num) {

  if(is.character(num)) {
    num <- stringr::str_extract(num, "\\d+") #look for the digits
    num <- as.numeric(num)
  }

  if (num %% 4 == 0) {
    return(TRUE)  # can also do return(T) in R, but you can reassign T<- FALSE so it is not good practice
  } else {
    return(FALSE)
  }
}

is_leap(2004)

# rm(list = ls()) # remove things from env, but not detach libraries
# you should instead restart R, because then you should get rid of the libraries too
# with this function and source(), you should be skeptical of the reproducibility of it

# library(dplyr)
# something that begins with "is" assume TRUE/FALSE answer


# devtools::load_all()
# in this package:: use this function

