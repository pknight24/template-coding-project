source("routines/dgp_routine.R")
source("routines/helper_routine.R")
source("routines/simulation_routine.R")
source("routines/proposed_routine.R")

set.seed(189564)


description <- ""

dgp_control <- list()

methods <- list()

R <- 100



output <- simulate(methods = methods, R = R, dgp_control = dgp_control)

obj <- list(results = output, dgp_control = dgp_control, description = description)

save(obj, file = "temp_out/obj.RData")
