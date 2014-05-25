## download the raw source data and unzip
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "data.zip", method="curl")
unzip("./data.zip")

## create output directory
dir.create("./output")

## row bind X/subject/activity tables individually
train <- read.table("./UCI HAR Dataset/train/X_train.txt")
test <- read.table("./UCI HAR Dataset/test/X_test.txt")
X <- rbind(train, test)

train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
S <- rbind(train, test)

train <- read.table("./UCI HAR Dataset/train/y_train.txt")
test <- read.table("./UCI HAR Dataset/test/y_test.txt")
Y <- rbind(train, test)

## id desired features by looking for -mean() OR -std()
features <- read.table("./UCI HAR Dataset/features.txt")
keepFeatures <- sort(grep("-mean\\(\\)|-std\\(\\)", features[, 2]))

## reduce X to desired data columns
X <- X[, keepFeatures]

## rename cols in X by removing -,(, and )
names(X) <- features[keepFeatures, 2]
names(X) <- tolower(gsub("-|\\(|\\)", "", names(X)))

## expand column names to more meaningful names
names(X) <- gsub("^t", "time", names(X))
names(X) <- gsub("^f", "frequency", names(X))
names(X) <- gsub("gyro", "gyroscope", names(X))
names(X) <- gsub("acc", "accelerometer", names(X))
names(X) <- gsub("std", "standarddeviation", names(X))
names(X) <- gsub("mag", "magnitude", names(X))

## rename activities by removing _, and the convert type to char
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")
activities[, 2] = tolower(gsub("_", "", as.character(activities[, 2])))
Y[,1] = activities[Y[,1], 2]

## name these data, bind all data together, and order
names(Y) <- "activity"
names(S) <- "subject"
tidyData <- cbind(S, Y, X)
tidyData <- tidyData[order(tidyData$subject),]

## write output to tidydata.txt
write.csv(tidyData, "./output/tidydata.txt", row.names=FALSE)

## convert to data table
library(data.table)
dt<- data.table(tidyData)

## group by subject & activity, apply mean, write to result
result <- dt[, lapply(.SD, mean), by=c("subject", "activity")]

## order result
result <- result[order(result$subject),]

## write output
write.csv(result, "./output/tidyDataGrouped.txt", row.names=FALSE)
