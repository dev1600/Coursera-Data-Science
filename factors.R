# Factors are used to represent categorical data.It can be ordered 
# unordered. They are treated specially modelling functions like 
# lm() and glm()
x<-factor(c('yes','no','yes','no'))
x
# Table() gives frequency of factor ie how many yes and no
table(x)
#unclass is used to tell how factors are coded
unclass(x)

# order of the levels can be set using the levels argument to factor()
# This can be important linear modelling because the first level is used as 
# the baseline level.
x<-factor(c('yes','no','yes'),
          levels=c('yes','no'))
x