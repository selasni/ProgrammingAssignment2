## Instructions: Put comments here that give an overall description of what your functions do
## Response: Pair of functions that cache the inverse of a matrix
## Notes: Used the makeVector & cachemean as guide
## Notes: Copy and paste that funciton and modify for assignment

## Instructions: Write a short comment describing this function:
## Response: The makeCacheMatrix function creates a special "matrix" object that can cache its inverse.
## Notes: What is the function to get the inverse?
## Notes: Ahh. solve. Use in the second

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) i <<- solve
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Instructioins: Write a short comment describing this function
## Response: The cacheSolve function computes the inverse of the special "matrix" returned by makeCacheMatrix above.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
