source("routines/proposed_routine.R")
source("routines/dgp_routine.R")
source("routines/helper_routine.R")


simulate <- function(methods, R, dgp_control){
    errors <- matrix(0, nrow = R, ncol = length(methods))
    colnames(errors) <- names(methods)
    for (r in 1:R)
    {
        attach(dgp_control)
        ## generate the data here
                  
	detach(dgp_control)

         for (m.idx in 1:length(methods))
         {
           method <- methods[[m.idx]]
           ### run the current method and store results
                      
           errors[r,m.idx] <- ## calculate error
         }

    }
    return(errors)
}







