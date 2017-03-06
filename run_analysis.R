## Merges the training and the test sets to create one data set.

##Extracts only the measurements on the mean and standard deviation for each measurement.

##Uses descriptive activity names to name the activities in the data set

##Appropriately labels the data set with descriptive variable names.

##From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library(reshape2)
library(plyr)

library(memisc)

if (!file.exists("assignmentdata.zip")) {
       download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "assignmentdata.zip")
        data <- unzip("assignmentdata.zip")
        }

data <- unzip("assignmentdata.zip")

## read in data and labels 

X_test <- read.table("./test/X_test.txt") 
Y_test <- read.table("./test/y_test.txt")
subject_test <- read.table("./test/subject_test.txt")
X_train <- read.table("./train/X_train.txt")
Y_train <- read.table("./train/y_train.txt")
subject_train <- read.table("./train/subject_train.txt")

## read in features and labels 

features <- read.table("features.txt")
activity_labels <- read.table("activity_labels.txt")

## rename variables from features vector

names(X_test) <- features[,2]

names(X_train) <- features[,2]

## now create a large data set with both test and train

all_data <- rbind(X_test, X_train)


##extract the data for mean and st dev containing columns and bind them together 

means <- all_data[, grep("mean", names(all_data), value = TRUE)]
stdev <- all_data[,grep("std", names(all_data), value = TRUE)]

mean_stdev <- cbind(means, stdev)

subject <- rbind(subject_test, subject_train)
activity <- rbind(Y_test, Y_train)

colnames(subject) <- "subject"
colnames(activity) <- "activity"

##put all data together  

mean_stdev_subject_activity <- cbind(subject, activity, mean_stdev)

## apply activity labels to correct column (don't do this before now)

mean_stdev_subject_activity[,2] <- factor(mean_stdev_subject_activity[,2], levels = activity_labels[,1], labels = activity_labels[,2])

##make a tidy data set (melt, accrding to Hadley Wickham paper)

tidy <- melt(mean_stdev_subject_activity, id.vars = c("subject", "activity"))

## output tidy data to a csv 

write.csv(tidy, file = "tidy.csv")

#create a codebook for the data set 

#codebook <- codebook(tidy)

#capture.output(codebook, file = "codebook.txt")

## calculate mean of means as per guidance in step 5

compositemeans <- aggregate(tidy$value, list(subject = tidy$subject, activity = tidy$activity, variable = tidy$variable), mean)

codebook <- codebook(compositemeans)

colnames(compositemeans) <- c("subject","activity", "variable", "means") 

write.csv(compositemeans, file = "cm.csv")

capture.output(codebook, file = "codebook.txt")


