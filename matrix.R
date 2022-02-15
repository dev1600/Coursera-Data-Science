# Matrices are vectors with a dimension attribute
m<- matrix(1:6,nrow=2,ncol=3)
dim(m)
m[1,2]
# matrices can also be created directly from vectos by adding a 
# dimension attribute
n<-1:10
dim(n)<-c(2,5)
n

# Create matrix by column binding and row binding
# using cbind() and rbind()
x<-1:3
y<-10:12
cbind(x,y)
rbind(x,y)