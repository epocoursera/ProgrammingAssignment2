# Only for myself - set working directory
setwd("~/Github/ProgrammingAssignment2")

######## START ASSIGNMENT 02 ########
makeCacheMatrix <- function(x=matrix()) {
    
    # This function creates a list of functions to 
    # set the value of the matrix
    # get the value of the matrix
    # set the value of inverse of the matrix
    # get the value of inverse of the matrix
    
    # Set an empty Matrix
    m <- NULL 
    
    # set the value of the matrix
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
  
    # Returns the value of the matrix
    get <- function() x
    
    # set the value of inverse of the matrix
    setInverse <- function(inverse) m <<-inverse
    
    # get the value of inverse of the matrix
    getInverse <- function() m
    
    # Creates a list of the functions 
    list(set = set, get = get,
        setInverse = setInverse,
        getInverse = getInverse)
}

cacheSolve <- function(x, ...) {
    ## Computes the inverse of the matrix returned thanks to makeCacheMatrix()
    
    m <- x$getInverse()
    
    # If the value of the inverse is not null, then returns the value
    if ( ! is.null(m)) {
        print("getting cached data")
        return(m)
    }
  
    # Set inverse of the value
    m <- solve(x$get())
    x$setInverse(m)
    
    # Returns the Inverse value
    m 
}
######## END ASSIGNMENT 02 ########