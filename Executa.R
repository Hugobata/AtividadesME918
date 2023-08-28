install.packages("devtools")
install.packages("purrr")
library(devtools)
library(purrr)

source('Simulador.R')
devtools::source_url("https://ime.unicamp.br/~ra137784/ME918/2023s2/lab01_ig.R")
planos <- input_lab01()
planos
samples_list <- map(planos, ~ generate_sample(.))
samples_list
