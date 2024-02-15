pollutantmean <- function(directory,pollutant, id)
{
  # got into the directory where the files are at
  directory <- paste(getwd(),"/",directory,"/",sep="") 
  # getting list of all the files in the specdata
  files <- list.files() 
  # initializing data (vector) with NULL
  data <- NULL
  for (i in id) 
  {
  current_dir <- paste(directory,files[i],sep = "")
  current_dir_data <- read.csv(files[i])
  data <- rbind(data,current_dir_data)
  }
  mean(data[[pollutant]], na.rm=TRUE)
}
