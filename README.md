# Getting and cleaning data - Course Project

This repo hosts the R code, a tidy data set and CodeBook.md for the Course project from "Getting and cleaning data" course on Coursera. 

The data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Files

The R script "run_analysis.R" does the following:

- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The file "tidy.data.txt" contains the independent tidy data set, created by the script "run_analysis.R".

The file "CodeBook.md" is a code book that describes the variables, the data, and the work that I performed to clean up the raw data.