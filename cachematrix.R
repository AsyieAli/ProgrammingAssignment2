## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	inverseM <- NULL
    
	set <- function(x) {
        
	m <<- x;
        
	inverseM <<- NULL;
    }
    
	get <- function() m;
    
	setinv <- function(inv) inverseM <<- inv;
    
	getinv <- function() inverseM;
    
	list(set = set, get = get, setinv = setinv, getinv = getinv)
}


}


## Write a short comment describing this function
## This function returns the Inverse Matrix (Set by makeCacheMatrix function)

## If the inverse has been executed, the function retrieves the Inverse Matrix from Cache

## If not, the function compute it and store in the Cache.

cacheSolve <- function(x, ...) {
inverseM <- m$getinv()

    
if(!is.null(inverseM)) {
    	

message("Get cached data..")
        
return(inverseM)
    }

    

data <- m$get()
    
inverseM <- solve(data, ...)
    
    
m$setinv(inverseM)

        

inverseM

}        

#Steps :  
#Retrieve the Inverse Matrix from the list
# Return the Inverse Matrix from Cache if any
 
# Execute the Inverse Matrix if It Is Not In Cache
 
#Store the Inverse Matrix in Cache
  
#Return the Inverse Matrix


