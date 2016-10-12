#######################################
#GSOM - Growing Self Organizing Maps
#example.r
#11/10/16 - Alex Hunziker
#######################################

# This is a example file to test and demonstrate the 
# functionality of the gsom functions.

setwd("Q:/Abteilungsprojekte/eng/SWWData/Alex/gsom")
source("main.r")

# Load Data
load("Q:/Abteilungsprojekte/eng/SWWData/Alex/Validation/SBR_raw.RData")
testdf <- testdata$k_1617_06[1000:1200,3:ncol(testdata$k_1617_06)]
traindata <- traindata[1:1200,3:ncol(traindata)]

# Generate gsom model
gsom_model <- gsom.train(traindata, 
                         keepdata = FALSE, iterations = 10, 
                         spreadFactor = 0.5, alpha = 0.5)

# Map data
mapped_testdata <- gsom.map(testdf, gsom_model)

# Plot

# Summary
gsom.summary(gsom_model)