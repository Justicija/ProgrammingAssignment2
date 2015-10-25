
## This function creates matrix with specified arguments 
##And it return matrix value if it is allready created

## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the inverse of the matrix
## 4. get the inverse of the matrix

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

## This function return inverse value of the given matrix

cacheSolve <- function(x, ...) {
  data<-x$getInverse()
  if(!is.null(data)) {
    message("getting cached data")
    return(data) 
  }
  k<-solve(x$get())
  x$setInverse(k)
  k
  ## Return a matrix that is the inverse of 'x'
}
