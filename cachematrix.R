## The below two functions calculate and store the inverse of a matrix.

## This 1st function creates a matrix object with several funtions. It sets the value of the matrix,
## gets the value of the matrix, sets the inverse of the matrix and gets the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
      m <- NULL
      set <- function(y) {
            x <<- y
            m <<- NULL
      }
      get <- function() x
      setinverse <- function(solve) m <<- solve
      getinverse <- function() m
      list(set = set, get = get,
           setinverse = setinverse,
           getinverse = getinverse)
}


## This functions returns the inverse of the matrix. If the inverse matrix is already in the cache, it will read
## and return its value. If it doesn't it calculates, stores and returns the inverse matrix.

cacheSolve <- function(x, ...) {
      m <- x$getinverse()
      if(!is.null(m)) {
            message("getting cached data")
            return(m)
      }
      data <- x$get()
      m <- solve(data, ...)
      x$setinverse(m)
      m        
      ## Return a matrix that is the inverse of 'x'
}
