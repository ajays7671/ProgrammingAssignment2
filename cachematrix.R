
## The first function makeCacheMatrix is a special "Matrix" # function
## It consists list to set and get the value of matrix
## And also set inverse of matrix and get inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
        t <- NULL
        set <- function(y){
                x <<- y        
                t <- NULL
        }
        get <- function() x
        getinverse <- solve(x)  
        setinverse <- function() t
        list(set = set, get = get,
             getinverse = getinverse,
             setinverse = setinverse)        
}

## To test the above function we are using a square matrix. ## Just uncomment below 2 lines 
## and see results
# x <- matrix(data = c(6,2,8,4), nrow = 2, ncol = 2, byrow = TRUE)
# makeCacheMatrix(x)



## The following function creates inverse of the matrix. ##  #However,   it first  checks
## if inverse is already calculated or not. In case, inverse ## isn't calculated in above function
## cacheSolve() creates inverse of the matrix

cacheSolve <- function(x, ...){
        t <- x$getinverse()
        if(!is.null(x)){
        stop("getting inversed matrix")
        return(t)
        }
        data <- x$get()
        t <- solve(data, ...)
        x$setinverse()
        t
}