## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(gpbStat)
data("hybrid")
data('check')
res = hcc(hybrid, check)
res

