# [] gives object same as the variable type
x<-c('a,','b','c','d')
x[1]
x[1:4]
x[x>"a"]
y<-list(foo=1:4,bar=0.6)
y
# Below gives me a list 
y[1]
# Below gives me just the sequence
y[[1]]
# $ used to get column by name

y$bar
# $ allows partial matching
y$b
# [[]] also allow partial matching
y[['b',exact=FALSE]]
name<-'foo'
y[[name]]