## Put comments here that give an overall description of what your
## functions do

## This will cache the matrix for later use

makeCacheMatrix <- function(x = matrix()) {
  
    m  <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setmatrix <- function(solve) m <<- solve
    getmatrix <- function() m
    list(set = set, get = get, setmatrix = setmatrix, getmatrix = getmatrix)
}


## get the matrix that's cached, then invert it.

cacheSolve <- function(x = matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getmatrix()
        if (!is.null(m)){
          message("getting data from cache")
          return(m)
        }
        matrix <- x$get()
        m <- solve(matrix, ...)
        x$setmatrix(m)
        m
}
