## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  reverse <-NULL # Initializing reverse as NULL
  
  set <- function(y){ 
    x <<- y
    reverse <<- NULL
  }
  get <- function () x
  setReverse <- function(Reverse) reverse <<- Reverse
  getReverse <- function() reverse
  # Define the "getters and setters" of functions
  
  list(set = set, get = get, setReverse = setReverse, getReverse = getReverse)
} #name the functions using "list"



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  reverse <- x$getReverse()#Initiation
  
  if (! is.null(reverse)){
    message("getting cached data")
    return(reverse)
  }#try to get cached data if it exists
  
  matrix <- x$get()
  reverse <- solve(matrix, ... ) #calculate
  x$setReverse(reverse) # set new "reverse"
  return(reverse)
  ## Return a matrix that is the inverse of 'x'
}