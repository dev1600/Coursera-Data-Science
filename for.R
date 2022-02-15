for(i in 1:10){
  print(i)
  
}
x<-c('a','b','c','d')
for(i in 1:4){
  print(x[i])
}

# seq_along generates equal to length of vector
for(i in seq_along(x)){
  print(x[i])
}

for(letter in x){
  print(letter)
}
# Below is example for nested for loop for going through 
# a matrix
y<-matrix(1:6,2,3)
for(i in seq_len(nrow(y)))
{
  for(j in seq_len(ncol(y))){
    print(y[i,j])
  }
}
