# R script from book "R Packages" written by Hadley Wickham, Jennifer Bryan
# see: https://r-pkgs.org/index.html
# 2021-01

library(devtools)
library(tidyverse)
library(fs)
#create_package("C:/PLAIT/C2R")

(a <- factor(c("character", "hits", "your", "eyeballs")))
# expected: "Levels: character eyeballs hits your"
(b <- factor(c("but", "integer", "where it", "counts")))
# expected: "Levels: but counts integer where it"
c(a, b)
factor(c(as.character(a), as.character(b)))
# expected: "Levels: but character counts eyeballs hits integer where it your"

# create new script defining (only!) fbind() <- function(a,b) {factor(c(as.character(a), as.character(b)))}

# use_r("fbind")

# load_all()
# if load_all() throws an error:
# rm(list = c("fbind"))
# load_all()

# fbind(a,b)
# expected:"Levels: but character counts eyeballs hits integer where it your"

# exists("fbind", where = globalenv(), inherits = FALSE)
# expected: "FALSE"

# check()
# use_gpl3_license(name = "C. Kujath")
