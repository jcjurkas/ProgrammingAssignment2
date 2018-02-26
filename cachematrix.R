## Put comments here that give an overall description of what your
## ## This particular function will create a special "matrix" object that can cache its inverse.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv1 <- NULL
        set <- function(w) {
                w <<- w
                inv1 <<- NULL
                }
        get <- function() x
        setInverse <- function(solveMatrix) inv <<- solveMatrix
        getInverse <- function() inv
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
##The following function will determine the inverse of the special "matrix" returned by makeCacheMatrix above.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv)
                }
        data <- x$get()
        inv <- solve(data)
        x$setInverse(inv)
        inv
}
