
# step 1

# step 2

library(devtools)

usethis::use_git()

usethis::use_r("is_leap") # creates .R file with given name

devtools::document() #updates the manual 'man' folder
devtools::check()   # checks for anything that may not work for someone else to install this
devtools::install() #

usethis::use_mit_license()

# you can always put these in a make file if you are constantly need to rerun these same sequence of commands
# turn it into a .PHONY target!
# usually for document check install() from devtools


usethis::use_testthat()

usethis::use_test('is_leap.R')

devtools::test()

usethis::use_package("stringr")


devtools::load_all()

is_leap(1000)
is_leap("1000")
is_leap("The year is 1000")


?is_leap

# once the package is on github
remotes::install_github("hlan22/isLeap")



library(isLeap)
usethis::use_pkgdown() # leverage r markdown to create a package website

pkgdown::build_site() # build website

usethis::use_pkgdown_github_pages()

install.packages("covr")

covr::report()

usethis::use_github_action() # select option 1
#creates workflow file
