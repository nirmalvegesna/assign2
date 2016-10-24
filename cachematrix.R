## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## a invertible matrix
## returns set a matrix, get a matrix, set the inverse, get the inverse

makeCacheMatrix <- function(x = matrix()) {
	I <- NULL
	set <- function(y) {
		x <<- y
		I <<- NULL
	}
	get <- function() x
	setInverse <- function(solve) I <<- solve
	getInverse <- function() I
	list(set = set, get = get,
		setInverse = setInverse,
		getInverse = getInverse)
}


## Write a short comment describing this function
## inverse of original matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        I <- x$getInverse()
        if(!is.null(I)) {
        	message("getting cached inverse")
        	return(I)
        }
        data <- x$get()
        I <- solve(data)
        x$setInverse(I)
        I
}
