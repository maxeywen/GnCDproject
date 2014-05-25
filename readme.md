# Course Project for Getting and Cleaning Data Coursera/JHU May 2014

## Repo contents
* run_analysis.R : R script that reads all data and creates 2 output files of clean data
* readme.md : informational document
* codebook : descriptions of features

## Instructions for use:
- create a project folder on your local machine
- in R (or RStudio) set that to your "working directory" [setwd(<project dir>)]
- save the script run_analysis.R (found here) to that project directory
- run the script
- 2 result files will be written to a subfolder <project dir>/output/

### Raw Data / Data Source
#### [Link to Raw Data Source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
The raw data is in a zip file.  There is no need to save the data via link as the script run_analysis.R will download and unpack the data.
Source link is provied here in case there is any problem running the script.
Script was written on a Linux OS and should be compatible with all distros and Mac OS.  Script has not been tested on Windows or any other OS.

### Script
When the script run_analysis.R is run it will do the following
- download the source data zip file and unpack the data to a subfolder named "UCI HAR dataset"
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Replaces the activity codes in the dataset with decriptive names from <project>/UCI HAR Dataset
- Expands dataset feature names
- writes this cleaned up dataset to <project>/output/tidydata.csv 
- Creates a second, independent tidy data set with the average of each variable for each activity and each subject and writes it to <project>/output/tidyDataGrouped.csv 

### Code Book
Will describe names of features
