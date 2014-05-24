# Course Project for Getting and Cleaning Data Coursera/JHU May 2014

## Repo contents
* run_analysis.R : R script that reads all data and creates 2 output files of clean data
* readme.md : informational document
* codebook : descriptions of features

### Data Source
#### [Source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

### Script
When the script run_analysis.R is run it will do the following
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Replaces the activity codes in the dataset with decriptive names from <project>/UCI HAR Dataset
- Expands dataset feature names
- writes this cleaned up dataset to <project>/output/tidydata.csv 
- Creates a second, independent tidy data set with the average of each variable for each activity and each subject and writes it to <project>/output/tidyDataGrouped.csv 

### Code Book
Will describe names of features
