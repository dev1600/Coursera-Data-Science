# They are used to stroe tabular data and are represented as list
# Here foo is name of column and bar is name of column
x<-data.frame(foo=1:4,bar=c(T,F,F,T))
x

# R can also have name 
y<-1:3
names(y)
names(y)<-c('a','b','c')
y
names(y)
# read.table and read.csv for reading tabular data
# readLines for reading lines of a text file
