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

## name these data and  bind all data together
names(Y) <- "activity"
names(S) <- "subject"
tidyData <- cbind(S, Y, X)

## write output to cleandata.csv
write.csv(tidyData, "./output/tidydata.csv")

uniqueSubjects = unique(S)[,1]
numSubjects = length(unique(S)[,1])
numActivities = length(activities[,1])
numCols = dim(tidyData)[2]
result = tidyData[1:(numSubjects*numActivities), ]

row = 1
for (s in 1:numSubjects) {
  for (a in 1:numActivities) {
    result[row, 1] = uniqueSubjects[s]
    result[row, 2] = activities[a, 2]
    tmp <- tidyData[tidyData$subject==s & tidyData$activity==activities[a, 2], ]
    result[row, 3:numCols] <- colMeans(tmp[, 3:numCols])
    row = row+1
  }
}
write.csv(result, "./output/tidyDataGrouped.csv")