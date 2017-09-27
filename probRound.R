probRound = function(...){
    # create vector of arguments
    input = c(...)
    
    # initialize list of rounded numbers
    rounded = vector(mode = "integer", length = length(input)) 
    
    i <- 1
    
    while (i <= length(input)){
        m <-  input[i] %% 1 # extract the mantissa
        
        # sample the floor and ceiling rounding with 
        # probabilities determined by the mantissa
        rounded[i] <- sample(c(floor(input[i]),ceiling(input[i])), 
                             size = 1, prob = c(1 - m, m));
        
        i = i + 1
    }
    
    return(rounded)
}