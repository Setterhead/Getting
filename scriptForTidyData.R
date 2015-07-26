## melt and dcast functions require the library
library(reshape2)

## downloading and unzipping  data
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="./UCI.zip", method="curl")
unzip("UCI.zip")

## getting character vector of all features
features <- read.table("UCI HAR Dataset/features.txt")
features <- as.character(features[,2])

## getting character vectors of activity labels in order to factorize later
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
activity_labels_1 <- as.character(activity_labels[,1])
activity_labels_2 <- as.character(activity_labels[,2])

## extracting only special features and vector of there indices
featuresToExtractSequence <- grep(".*mean.*|.*std.*", features)
featuresToExtract <- features[featuresToExtractSequence]

## giving descriptive names
featuresToExtract = gsub('-mean', '.Mean', featuresToExtract)
featuresToExtract <- gsub('[(-)]', '', featuresToExtract)
featuresToExtract = gsub('-std', '.Std', featuresToExtract)
featuresToExtract = gsub('^t', 'TimeDomain.', featuresToExtract)
featuresToExtract = gsub('^f', 'FrequencyDomain.', featuresToExtract)
featuresToExtract = gsub('-X', '.X', featuresToExtract)
featuresToExtract = gsub('-Y', '.Y', featuresToExtract)
featuresToExtract = gsub('-Z', '.Z', featuresToExtract)

## reading and binding all data to 1 data set
train <- read.table("UCI HAR Dataset/train/X_train.txt")[featuresToExtractSequence]
trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
train <- cbind(trainSubjects, trainActivities, train)

test <- read.table("UCI HAR Dataset/test/X_test.txt")[featuresToExtractSequence]
testActivities <- read.table("UCI HAR Dataset/test/Y_test.txt")
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
test <- cbind(testSubjects, testActivities, test)

finalData <- rbind(train, test)

## giving previously prepared names to the bariables
colnames(finalData) <- c("subject", "activity", featuresToExtract)
finalData$activity <- factor(finalData$activity, levels = activity_labels_1, labels = activity_labels_2)
finalData$subject <- as.factor(finalData$subject)

##melting and casting data in order to make it tidy in the requested way
finalDataMelted <- melt(finalData, id = c("subject", "activity"))
finalDataMean <- dcast(finalDataMelted, subject + activity ~ variable, mean)

##saving the new tidy data set in a txt file
write.table(finalDataMean, "tidy.txt", row.name=FALSE)