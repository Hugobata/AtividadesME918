library(purrr)


walk(seq_along(planos), function(i) {
  plan <- planos[[i]]
  sample <- samples_list[[i]]
  
  file_name <- sprintf("simulacao%02d.RData", i)
  
  save(plan, sample, file = file.path("resultados", file_name))
})

walk(seq_along(planos), function(i) {
  plan <- planos[[i]]
  sample <- samples_list[[i]]
  
  result <- sample
  
  file_name <- sprintf("simulacao%02d.RData", i)
  
  save(plan, sample, result, file = file.path("resultados", file_name))
})

