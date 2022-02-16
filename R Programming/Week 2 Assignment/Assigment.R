pollutantmean<-function(directory="/home/dev16/Data Science Coursera/R Programming/Week 2 Assignment/specdata"
                        ,pollutant,id=1:332){
 
  # List.files makes a list of files which can be accessed like a list
  # pattern="" takes a regex expression here we use it to specify to take only .csv
  # full.names appends the whole path to the name  of file 
  
  file_lists<-list.files(path=directory,pattern='.csv',full.names =TRUE)
  all_values<-c()
  for(i in id){
    df<-read.csv(file_lists[i])
    all_values<-c(all_values,df[[pollutant]])
  }
  mean(all_values,na.rm=TRUE)
} 

complete<-function(directory="/home/dev16/Data Science Coursera/R Programming/Week 2 Assignment/specdata",
                   id=1:332){
  file_lists<-list.files(path=directory,pattern='.csv',full.names =TRUE)
  complete_vec=c()
  for(i in id){
    df<-read.csv(file_lists[i])
    
    # Since the Default numeric value of False is 0
    # TRUE is 1 by summing the bool matrix we will get
    # no. of complete values
    comp<-sum(complete.cases(df))
    complete_vec=c(complete_vec,comp)
  }
  data.frame(id=id,
            nobs=complete_vec )
  
}

corr<-function(directory="/home/dev16/Data Science Coursera/R Programming/Week 2 Assignment/specdata",
               threshold=0){
  file_lists<-list.files(path=directory,pattern='.csv',full.names =TRUE)
  correlations=c()
  
  for(i in 1:332){
    df<-read.csv(file_lists[i])
    comp<-sum(complete.cases(df))
    if( comp > threshold){
      curr_cor<-cor(x=df$sulfate,y=df$nitrate,use="na.or.complete")
      correlations<-c(correlations,curr_cor)
    }
  }
  if(length(correlations)==0){
    numeric()
  }
 else correlations
}

pollutantmean(pollutant="nitrate",id=c(2,4,5))
pollutantmean(pollutant="sulfate",id=1:10)
complete(id=3)
complete(id=c(2, 4, 8, 10, 12))
cr<-corr(threshold = 150)
summary(cr)
 