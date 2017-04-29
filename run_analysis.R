library(reshape2)
## This script requires that the file "getdata_projectfiles_UCI HAR Dataset.zip" is already
## downloaded and the contents is unzipped to the "UCI HAR Dataset" folder.

## Read dataset activity labels and features:
dataset.activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
dataset.activityLabels[,2] <- as.character(dataset.activityLabels[,2])
dataset.features <- read.table("UCI HAR Dataset/features.txt")
dataset.features[,2] <- as.character(dataset.features[,2])

## Extract the measurements on the mean and standard deviation:
# Get only the "mean" and "std" features we want:
featuresWanted <- grep(".*mean.*|.*std.*", dataset.features[,2])
featuresWanted.names <- dataset.features[featuresWanted,2]
# Rename the feature "-mean" to "Mean":
featuresWanted.names = gsub('-mean', 'Mean', featuresWanted.names)
# Rename the feature "-std" to "StandardDev":
featuresWanted.names = gsub('-std', 'StandardDev', featuresWanted.names)
featuresWanted.names <- gsub('[-()]', '', featuresWanted.names)

## Read the dataset files and get only the features we want:
dataset.train <- read.table("UCI HAR Dataset/train/X_train.txt")[featuresWanted]
dataset.trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
dataset.trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
dataset.train <- cbind(dataset.trainSubjects, dataset.trainActivities, dataset.train)
dataset.test <- read.table("UCI HAR Dataset/test/X_test.txt")[featuresWanted]
dataset.testActivities <- read.table("UCI HAR Dataset/test/Y_test.txt")
dataset.testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
dataset.test <- cbind(dataset.testSubjects, dataset.testActivities, dataset.test)

## Merge the training and test datasets and add labels:
mergedData <- rbind(dataset.train, dataset.test)
colnames(mergedData) <- c("subject", "activity", featuresWanted.names)

## Convert activities and subjects into factors:
mergedData$activity <- factor(mergedData$activity, levels = dataset.activityLabels[,1], labels = dataset.activityLabels[,2])
mergedData$subject <- as.factor(mergedData$subject)
mergedData.melted <- melt(mergedData, id = c("subject", "activity"))
mergedData.mean <- dcast(mergedData.melted, subject + activity ~ variable, mean)

## Finally write the tidy dataset with the average of each variable to the file "tidy.txt":
write.table(mergedData.mean, "tidy.txt", row.names = FALSE, quote = FALSE)