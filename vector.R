# c() function can be used to create vector objects

x<-c(0.5,0.6)       ## numeric type
y<-c(TRUE,FALSE)    ## Logical Type
x<-c(T,F)           ## Logical Type
x<-c('a','b','c')   ## Logical Type
x<-c(1+0i,2+1i)      ## Complex Type

# Using vector() function
x<-vector("numeric",length=10)

## When different objects are mixed in a vector ,coercion occurs so 
## that every element in the vector is of the same class

## Explicit coercion can be done using as.* functions
x<-0:6
class(x)
as.numeric(x)
as.logical(x)
y<-as.character(x)