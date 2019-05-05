

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(z = matrix()) {
  
  
  n <- NULL
  set <- function(y) {
    z <<- y
    n <<- NULL
  }
  get <- function() z
  setsolve <- function(solve) n <<- solve
  getsolve <- function() n
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
  
}


## Write a short comment describing this function! 
##I will add my command next time I start working on this!! Babak

cacheSolve <- function(x, ...) {
  n <- z$getsolve()
  if(!is.null(n)) {
    message("getting cached data")
    return(n)
  }
  data <- z$get()
  n <- solve(data, ...)
  z$setsolve(n)
  n
}      ## Return a matrix that is the inverse of 'x'
