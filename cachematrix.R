## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
                  inv<-NULL
                  set<-function(y){
                      x<<-y
                      inv<<-NULL
                  }
                  
                  get<-function() {x}
                  SetInverse<-function(inverse) {inv<<-inverse}
                  getInverse<-function(){inv}
                  list(set=set,get=get,SetInverse=SetInverse,getInverse=getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
              inv<-x$getInverse()
              if(!is.null(inv)){
                  message("getting cached data")
                  return(inv)
              }
              mat<-x$get()
              inv<-solve(mat,...)
              x$SetInverse(inv)
              inv
        ## Return a matrix that is the inverse of 'x'
}


matriz<-makeCacheMatrix(matrix(1:4,nrow=2,ncol=2))

matriz$get()


matriz$getInverse()

cacheSolve(matriz)

