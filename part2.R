noofobs <- function(directory, file_id)
{
  current_dir <- paste(getwd(),"/",directory,sep = "")
  current_files <- list.files(current_dir)
  data <- data.frame("id"=NULL, "nobs"=NULL)
  serial<-1
  for (i in file_id) 
  {
    read_file <-read.csv(paste(current_dir,"/",current_files[i],sep=""))
    complete_obs <- na.omit(read_file)
    number_of_obs <- nrow(complete_obs)
    temp_data <- data.frame("id"=i, "nobs"=number_of_obs)
    data <- rbind(data,temp_data)
    serial<-serial+1
  }
  print(data)
}

