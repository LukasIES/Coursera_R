## Put comments here that give an overall description of what your
## functions do

## To be honest, I absolutely dont get the example in instructions, so I just tried to replicate this for matrices

makeCacheMatrix <- function(x = numeric()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setInv <- function(solve) m <<- solve
        getInv <- function() m
        list(set = set, get = get,
             setInv = setInv,
             getInv = getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        m <- x$getInv()
        if(!is.null(m)) {
                print("loading")
                return(m)
        }
        data <- x$get()
        m <- solve(data)
        x$setInv(m)
        m
}
