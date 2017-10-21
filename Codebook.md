CodeBook for Getting and Cleaning Data Course Project:

Origninal Data:

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Data sets:

Raw data sets: train and test

These data sets contain the combined data from files Subject, X and y where Subject contains information on the subject with one column, X contains information on the features with 561 columns and y contains information on the activity with one column.  The numeric number in y is matched to an activity in the activity_labels.txt file.  These files were combined and the numeric values removed so that y contains the defined activity labels.  The column names in X are equivalent to the data supplied in the features.txt file.  The columns were renamed using the data in column two of the features.txt file so that the X column names are now the collected measurements. 

Subject variable was named subject

y variable was named activity

x variables were defined by features.txt file

Merged extracted data set: Merge_Ext

This data set contains the merged data from the training and testing data sets showing only the selected data for mean and standard deviations, while maintaining the information for subject and activity, for the original data extracted with the following regular expressions:

subject|activity|mean|std and -Freq 

When used together with the select and grep functions these expressions extract 68 columns (the subject lable, the activity label and the 66 measurements that represent mean and standard deviation) from our raw data set of 561 measurements. 

Original variable names (measurments) were modified in the following way:

Removed all - and paranthesis ()

Removed double words (exp:BodyBody)

Replaced mean and std with Mean and Std

Tidy data set: Tidy

The tidy data set contains the average of each measurment (standard deviation and mean values of the raw dataset) for each activity and each subject resulting in 40 observations. 
