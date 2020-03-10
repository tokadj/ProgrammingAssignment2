## Put comments here that give an overall description of what your functions do
#These two functions will compute the inverse of a matrix. If it has existed matrix inversion, it will cache the inverse for later use.


## Write a short comment describing this function
#This function will create a matrix,and set or cache an inverse of this matrix.
makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function
#This function will check the existing of cache,and if the cache exists,it will be got from above function and be used to compute. 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if(!is.null(n)) {
                message("getting cached data")
                return(n)
        }
        data <- x$get()
        i <- inverse(data, ...)
        x$setinverse(i)
        i
}
