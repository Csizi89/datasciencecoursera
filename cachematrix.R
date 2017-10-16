## Creating list containing functions to set and get the value of the matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
       s <- NULL
       set <- function(y) {
             x <<- y
            inv <<- NULL
         }
       get <- function() x
       setinverse <- function(inverse) s <<- inverse
       getinverse <- function() s
       list(set = set, get = get,
                       setinverse = setinverse,
                       getinverse = getinverse)
   }
## Returns the inverse of the matrix using Solve function itf its cached already then the cached value 
> cacheSolve <- function(x, ...) {
       s <- x$getsolve()
     if(!is.null(s)) {
      message("getting cached data")
     return(s)
         }
      data <- x$get()
      s <- solve(data, ...)
      x$setsolve(s)
      s
   }
