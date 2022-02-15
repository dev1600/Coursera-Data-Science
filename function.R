add2<-function(x,y){
  #In R function returns the last expression
  x+y
}
# Below function returns vector that are greater than n
# N=10 below means if no argument then 10 is default value
aboveN<-function(x,N=10){
  use<-x>N
  x[use==TRUE]
}

# Below function calculates the mean value
columnmean<-function(y){
  nc<-ncol(y)
  means<-numeric(nc)
  for(i in 1:nc)
  {
    means[i]<-mean(y[,i])
  }
  means
}
z<-add2(10,15)
print(z)
print(aboveN(c(1,2,12,34),15)) 
print(columnmean(matrix(1:6,2,3)))