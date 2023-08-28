#Hugo Obata
#ra: 174756

generate_sample <- function(simulation_plan) {
  
  if (simulation_plan$distribution == "poisson") {
    sample <- rpois(simulation_plan$obs, simulation_plan$lambda)
  } else if (simulation_plan$distribution == "normal") {
    sample <- rnorm(simulation_plan$obs, simulation_plan$mu, sqrt(simulation_plan$sigma2))
  } else if (simulation_plan$distribution == "bernoulli") {
    sample <- rbinom(simulation_plan$obs, 1, simulation_plan$p)
  } else {

    sample <- NULL
  }
  
  return(sample)
}


readRenviron("C:/Users/T-Gamer/Documents/lab01/.Renviron")
Sys.getenv("RA")

