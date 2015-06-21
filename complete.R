complete <- function(directory, id = 1:332) {
   
    require("stringr")
    dataNobs <- data.frame(id = numeric(0), nobs = numeric(0))
    
    for(i in id){
        fileName <- paste(str_pad(i, width = 3, side = "left", pad = "0"), "csv", sep = ".")
        fullPath <- paste(directory, fileName, sep = "/")
        data <- read.csv(fullPath)
        dataNobs <- rbind(dataNobs, data.frame(id = i, nobs = nrow(data)))
    }
    dataNobs
}