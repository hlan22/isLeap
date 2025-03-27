# library(dplyr)
# something that begins with "is" assume TRUE/FALSE answer
is_leap <- function(num) {
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



# devtools::load_all()
# in this package:: use this function

