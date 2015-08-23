setwd("C:/Users/PC/Desktop/R/Getting and cleaning data/course project/UCI HAR Dataset")
library(plyr)

# Read the data into R

x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

# Bind data frames by rows according to the type (x, y, subject)

x.df <- rbind(x_train, x_test)
y.df <- rbind(y_train, y_test)
subject.df <- rbind(subject_train, subject_test)
names(subject.df) <- "Subject" # Give the name "Subject" to the column of subject.df

# Extract only the measurements on the mean and standard deviation 
# for each measurement.

features <- read.table("features.txt")  # Read features.txt into R

Mean <- grep("mean()", features[,2]) # Subset names containing "mean()"
SD <- grep("std()", features[,2])  # Subset names containing "std()"
mean.sd <- c(Mean, SD)  # Combine the names with "mean()" or "std" into a single vector 

# Extract only the measurements on the mean and sd

subset.x.df <- x.df[, mean.sd]

# Give descriptive names to variable in subset.x.df

names(subset.x.df) <- features[mean.sd, 2] 

# Use descriptive activity names to name the activities in the data set

## Read factivity_labels.txt into R

activities <- read.table("activity_labels.txt") 

## Assign activity names to y.df values

y.activity <-  merge(y.df, activities, by="V1", all.x = TRUE)[2]
names(y.activity) <- "Activity_type"

# Create one data set with descriptive variable names.

data <- cbind(subset.x.df, y.activity, subject.df)

# Create an independent tidy data set with the average of each variable 
# for each activity and each subject.

tidy.data <- ddply(data, .(Subject, Activity_type), 
                   function(x) colMeans(x[, 1:(ncol(data) - 2)]))

write.table(tidy.data, "tidy.data.txt", row.name = FALSE)







