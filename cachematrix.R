## Create a special matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  invx <- NULL
  set <- function(y) {
    x <<- y
    invx <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) invx <<- inverse
  getinverse <- function() invx
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Compute the inverse of the matrix created using makeCacheMatrix().
## If the inverse has already been calculated and the matrix is unchanged,
## then return the cached solution.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  invx <- x$getinverse()
  if(!is.null(invx)) {
    message("getting cached data")
    return(invx)
  }
  data <- x$get()
  invx <- solve(data, ...)
  x$setinverse(invx)
  return(invx)
}
