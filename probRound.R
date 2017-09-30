probRound <- function(..., position = 0){
    # create vector of arguments
    input <-  c(...)
    shift <-  10 ^ position
    shifted_input <- input * shift
    
    # initialize list of rounded numbers
    rounded = vector(mode = "numeric", length = length(input)) 
    
    for (i in seq(length(input))) {
        m <-  shifted_input[i] %% 1 # extract the mantissa
        
        # sample the floor and ceiling rounding with 
        # probabilities determined by the mantissa
        rounded[i] <- sample(c(floor(shifted_input[i]),
                               ceiling(shifted_input[i])), 
                             size = 1, prob = c(1 - m, m)) / shift;
    }
    
    return(rounded)
}