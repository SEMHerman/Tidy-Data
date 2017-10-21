## You should create one R script called run_analysis.R that does the following. 
## 1.Merges the training and the test sets to create one data set.

## load necessary packages
library(dplyr)

## set working directory to be train file
setwd("./UCI HAR Dataset")

## import accessory files into a data.frame

activity_labels<-read.table("./activity_labels.txt")
features<-read.table("./features.txt")

## Make train data.frame
Subject_train<-read.table("./train/Subject_train.txt")
names(Subject_train)<-"subject"
X_train<-read.table("./train/X_train.txt")
names(X_train)<-features$V2
y_train<-read.table("./train/y_train.txt")
y_train<-merge(y_train,activity_labels)
y_train<-y_train[2]
names(y_train)<-"activity"
train<-bind_cols(Subject_train,y_train,X_train)

## Make test data.frame
Subject_test<-read.table("./test/Subject_test.txt")
names(Subject_test)<-"subject"
X_test<-read.table("./test/X_test.txt")
names(X_test)<-features$V2
y_test<-read.table("./test/y_test.txt")
y_test<-merge(y_test,activity_labels)
y_test<-y_test[2]
names(y_test)<-"activity"
test<-bind_cols(Subject_test,y_test,X_test)

## Merge test and train data.frames
Merge<-bind_rows(train,test)

## 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
Merge_Ext<-Merge %>% dplyr:: select(grep("subject|activity|mean|std", names(Merge)), -grep("Freq", names(Merge)))

## 3.Uses descriptive activity names to name the activities in the data set
## done above in the creation of the data.frames 

## 4.Appropriately labels the data set with descriptive variable names. 
names(Merge_Ext)<-gsub("-","",names(Merge_Ext))
names(Merge_Ext)<-sub("\\(\\)","",names(Merge_Ext))

## 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Tidy<-Merge_Ext %>% group_by (subject,activity) %>% summarise_all(funs(mean))

## creates an output file in txt formate
write.table(Tidy,file="Tidy_data.txt",row.name=FALSE)

