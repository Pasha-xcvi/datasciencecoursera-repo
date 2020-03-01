#function to create the matrix
makeCacheMatrix <- function(t = matrix()) {
    p <- NULL
  inputy <- function(h) {
          t <<- h
          p <<- NULL
  }
  cally <- function() t
  inputmatrix <- function(inverse) p <<- inverse
  callinv <- function() p
  list(inputy = inputy,
       cally = cally,
       inputmatrix = inputmatrix,
       callinv= callinv)
}

#function to create the inverse of the matrix
cacheSolve <- function(u, ...) {
  n <- u$callinv()
  if (!is.null(n)) {
          message("getting cached data")
          return(n)
}
    
chest <<- u$cally()
  n <- solve(chest, ...)
  u$ inputy (n)
  n
  }

