setwd("~/coursera/repdata/RepData_PeerAssessment2")


if(!(exists("storm_data"))) {
        # Set up variables for temp file.
        fileURL <- "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2"
        filename <- "repdata%2Fdata%2FStormData.csv.bz2"
        
        # Download the file.
        download.file(fileURL, destfile = filename, method = "curl")
        
        # Create the file handle.
        fh <- bzfile(filename)
        
        # Read in the data and close the file.
        storm_data <- read.csv(fh)
}