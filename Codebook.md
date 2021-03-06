CodeBook for Getting and Cleaning Data Course Project:

Origninal Data:

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Data sets:

Raw data sets: train and test

These data sets contain the combined data from files Subject, X and y where Subject contains information on the subject with one column, X contains information on the features with 561 columns and y contains information on the activity with one column.  The numeric number in y is matched to an activity in the activity_labels.txt file.  These files were combined and the numeric values removed so that y contains the defined activity labels.  The column names in X are equivalent to the data supplied in the features.txt file.  The columns were renamed using the data in column two of the features.txt file so that the X column names are now the collected measurements. 

Subject variable was renamed "subject"

y variable was renamed "activity"

x variables were renamed using the features.txt file

Merged extracted data set: Merge_Ext

This data set contains the merged data from the training and testing data sets showing only the selected data for mean and standard deviations, while maintaining the information for subject and activity, for the original data extracted with the following regular expressions:

subject|activity|mean|std and -Freq 

When used together with the select and grep functions these expressions extract 68 columns (the subject lable, the activity label and the 66 measurements that represent mean and standard deviation, excluding the meanfeq columns) from our raw data set of 561 measurements. 

Original variable names (measurments) were modified in the following way:

Removed all - and paranthesis ()

Removed double words (exp:BodyBody)

Replaced mean and std with Mean and Std

Example modifications:

"tBodyAcc-mean()-X" was renamed "tBodyAccMeanX" 
"fBodyBodyGyroJerkMagstd()" was renamed "fBodyGyroJerkMagStd" 

Tidy data set: Tidy

The tidy data set contains the average of each measurment (standard deviation and mean values of the raw dataset) for each activity and each subject resulting in 40 observations. 

List of Activities:

(1) WALKING
(2) WALKING_UPSTAIRS
(3) WALKING_DOWNSTAIRS
(4) SITTING
(5) STANDING
(6) LAYING

Variables:

subject - id of subject (1-30)
activity - measured activity
Measurements: average value of all observations of the measurment for given subject and activity
timeBodyAccMeanX 
timeBodyAccMeanY 
timeBodyAccMeanZ 
timeBodyAccStdX 
timeBodyAccStdY 
timeBodyAccStdZ 
timeGravityAccMeanX 
timeGravityAccMeanY 
timeGravityAccMeanZ 
timeGravityAccStdX 
timeGravityAccStdY 
timeGravityAccStdZ
timeBodyAccJerkMeanX 
timeBodyAccJerkMeanY 
timeBodyAccJerkMeanZ 
timeBodyAccJerkStdX 
timeBodyAccJerkStdY 
timeBodyAccJerkStdZ 
timeBodyGyroMeanX 
timeBodyGyroMeanY 
timeBodyGyroMeanZ 
timeBodyGyroStdX 
timeBodyGyroStdY 
timeBodyGyroStdZ 
timeBodyGyroJerkMeanX
timeBodyGyroJerkMeanY 
timeBodyGyroJerkMeanZ
timeBodyGyroJerkStdX 
timeBodyGyroJerkStdY 
timeBodyGyroJerkStdZ 
timeBodyAccMagMean 
timeBodyAccMagStd 
timeGravityAccMagMean 
timeGravityAccMagStd 
timeBodyAccJerkMagMean 
timeBodyAccJerkMagStd 
timeBodyGyroMagMean
timeBodyGyroMagStd 
timeBodyGyroJerkMagMean 
timeBodyGyroJerkMagStd 
freqBodyAccMeanX 
freqBodyAccMeanY 
freqBodyAccMeanZ 
freqBodyAccStdX
freqBodyAccStdY 
freqBodyAccStdZ 
freqBodyAccJerkMeanX 
freqBodyAccJerkMeanY 
freqBodyAccJerkMeanZ
freqBodyAccJerkStdX
freqBodyAccJerkStdY 
freqBodyAccJerkStdZ
freqBodyGyroMeanX 
freqBodyGyroMeanY
freqBodyGyroMeanZ 
freqBodyGyroStdX 
freqBodyGyroStdY
freqBodyGyroStdZ
freqBodyAccMagMean
freqBodyAccMagStd 
freqBodyAccJerkMagMean 
freqBodyAccJerkMagStd 
freqBodyGyroMagMean 
freqBodyGyroMagStd
freqBodyGyroJerkMagMean
freqBodyGyroJerkMagStd 
