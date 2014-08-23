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
        
        # Also download some documentation.
        doc1URL <- "https://d396qusza40orc.cloudfront.net/repdata%2Fpeer2_doc%2Fpd01016005curr.pdf"
        doc1name <- "repdata%2Fpeer2_doc%2Fpd01016005curr.pdf"
        download.file(doc1URL, destfile = doc1name, method = "curl")
        
        faqURL <- "https://d396qusza40orc.cloudfront.net/repdata%2Fpeer2_doc%2FNCDC%20Storm%20Events-FAQ%20Page.pdf"
        faqname <- "repdata%2Fpeer2_doc%2FNCDC%20Storm%20Events-FAQ%20Page.pdf"
        download.file(faqURL, destfile = faqname, method = "curl")
}
