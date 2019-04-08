setwd("Desktop/Spring2019/MMSS311-2/")

packages <- c("dplyr", "ggplot2", "lubridate", "stringr", "foreign")

load.packages <- function(x) {
  if (!require(x, character.only = TRUE)) {
    install.packages(x, dependencies = TRUE)
    library(x, character.only = TRUE)
  }
}

lapply(packages, load.packages)

qog <- read.csv("http://www.qogdata.pol.gu.se/data/qog_std_cs_jan19.csv")

print(dim(qog))