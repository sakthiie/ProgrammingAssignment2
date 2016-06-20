## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  
  set<-function(y){
    x<<-y
    m<<-NULL
  }

  get <- function() {
    ## Return the matrix
    x
  }

  setInverse <- function(inverse) {
    i <<- inverse
  }
  ## Method to get the inverse of the matrix
  getInverse <- function() {
    m
  }
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)

}


## cacheSolve::


cacheSolve <- function(x, ...) {
        m <- x$getInverse()
        if( !is.null(m) ) {
          message("getting cached data")
          return(m)
        }
        data <- x$get()
        m <- solve(data) %*% data
        x$setInverse(m)
        m      
}