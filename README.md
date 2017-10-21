# Tidy-Data
Getting  and Cleaning Data Course Project

Script: run_analysis.R

The scrip assumes that the user has already unzipped the dataset and placed it in their working directory - UCI HAR Dataset should be a subdirectory of the current directory.

This scrip when sourced will ensure you are in the correct directory (UCI HAR Dataset), checks to see if the needed package is installed and if not intalls it and then loads the required R package (dplyr).  

When the above assumptions are true the script will:
1) Download the individal files needed from the UCI HAR Dataset using read.table() and label them accordingly:
      i) features.txt <- features
      ii) activity_labels.txt <- activity_labels
      iii) Subject_train.txt <- Subject_train
      iv) X_train.txt <- X_train
      v) y_train.txt <- y_train
      vi) Subject_test.txt <-Subject_test
      vii) X_test.txt <-X_test
      viii) y_test.txt <-y_test
2) Variables were renamed in the raw data files as follows:
       i) Subject_train and Subject_test variable <- "subject"
       ii) X_train annd X_test <- renamed using features
       iii) y_train and y_test were each combined with activity_labels to make one data.frame saved over the originial
       iv) the numeric column in y_train and y_test were removed (column 1)
       v) y_train and y_test variable <- "activity"
3) The Subject_train, X_train and y_train data.frames were combined using bind_cols into train
4) The Subject_test, X_test and y_test data.frames were combined using bind_cols into test
5) The train and test data sets were combined using bind_rows into Merge
6) Data for only mean and std was extracted using regular expressions, the grep and select commands using the dplyr package
        i) this creates a subset of data now with only 68 columns - the 66 measurment variables, the subject and the activity
7) The column names for the measurments is cleaned up as follows:
        i) Removed - and () and double words (such as BodyBody) using the gsub and sub commands
        ii) Capitalized Mean and Std by replacing mean and std using the sub command
8) A tidy data set is created that displays the mean calculated for each of the 66 measurments by activity and subject
        i) This is done using the group_by and summarise_all commands creating a file called Tiday
9) Tidy dataset is written to disk as a .txt file using the write.table function 

