## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
        #establecer el vaor de la mátriz
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
        # obtener el valor de la mátriz
  get <- function() x
        #establecer el valor de la inversa
  setsolve <- function(solve) inv  <<- solve
        #obtener el valor de la inversa
  getsolve <- function() inv
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function
## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
inv <- x$getsolve()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setsolve(inv)
  inv
        
}
