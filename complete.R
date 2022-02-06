##Part 2

DataPart2<- read.csv("specdata/001.csv")
complete.cases(DataPart2)
sum(complete.cases(DataPart2))
fileList<-list.files(path="specdata", pattern=".csv", full.names= TRUE)
length(fileList)
sum(complete.cases(read.csv(fileList[1])))

nobs<-numeric()
sum(complete.cases(read.csv(fileList[1]))) ##number of complete cases
nobs<- c(nobs,sum(complete.cases(read.csv(fileList[1]))) ) ## we remember the first sum and add the consequent one

complete<- function(directory, id=1:332){
  fileList<-list.files(path=directory, pattern=".csv", full.names= TRUE)
  nobs <- numeric()
  for(i in id){
    data <- read.csv(fileList[i])
    nobs <- c(nobs, sum(complete.cases(data)))
  }
  data.frame(id, nobs)
}