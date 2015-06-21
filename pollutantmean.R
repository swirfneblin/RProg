pollutantmean <- function(directory, pollutant, id = 1:332) {

    require("stringr")
    meanData <- c()
    
    for(i in id){
        fileName <- paste(str_pad(i, width = 3, side = "left", pad = "0"), "csv", sep = ".")
        fullPath <- paste(directory, fileName, sep = "/")
        data <- read.csv(fullPath)
        t <- mean(data[[pollutant]], na.rm = TRUE)
        
        if(!is.na(t))
            meanData <- union(meanData, t)
    }
    mean(meanData, na.rm = TRUE)
}