********************************************************************************************************************************

The run_analysis.R script performs the following steps to clean the data:
Step 1:
i.	Read X_train.txt, y_train.txt and subject_train.txt from the "./UCI HAR Dataset/train" folder and store them in Xdata_train, Label_train, and Subject_train variables respectively.
ii.	Read X_test.txt, y_test.txt and subject_test.txt from the "./UCI HAR Dataset/test" folder and store them in Xdata_test,  Lable_test, and Subject_test variables respectively.
iii.	Merge Xdata_train and Xdata_test together to obtain a combined dataset, Xdata_merge.
Step 2:
iv.	Read the features.txt file from the "/UCI HAR Dataset" folder and store the data in a variable called variable_names. 
v.	Keep only mean and standard deviation related variables which was in total 66, and store them in a new vector varNeed.ind.
vi.	Clean the column names of the subset. We remove the "()" and "-" symbols in the names, as well as make the first letter of "mean" and "std" a capital letter "M" and "S" respectively.
vii.	Update the dataset Xdata_merge by removing variable not mean and std related. 
viii.	Merge Subject_train and Subject_test
ix.	Merge Label_train and Label_test
x.	Combine Subject_merge, Label_merge and Xdata_merge together.
Step 3: 
xi.	Read the activity_labels.txt file from the "./ UCI HAR Dataset " folder and store the data in a variable called activity.
xii.	Transform the values of Label_merge according to the activity data frame.
xiii.	Replace the activity column of Data_merge with the descriptive activity.
Step 4:
xiv.	Label the data set with the descriptive variable names
xv.	Write out the Data_merge.txt file.
Step 5: 
xvi.	Generate a second independent tidy data set with the average of each measurement for each activity and each subject. We have 30 unique subjects and 6 unique activities. For each combination, we calculate the mean of each measurement with the corresponding combination. The new dataset was stored as tidy.mean
xvii.	Write the dataframe tidy.mean out to "tidy.mean.txt" file in current working directory.

********************************************************************************************************************************

Code book
 
This code book summarizes the variables, the data, and any transformations or work that you performed to clean up the data

Identifiers
•	subjects: The ID of the test subject
•	activity: The type of activity performed when the corresponding measurements were taken.
•	Levels of activity
1.	WALKING (value 1): subject was walking during the test
2.	WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test
3.	WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test
4.	SITTING (value 4): subject was sitting during the test
5.	STANDING (value 5): subject was standing during the test
6.	LAYING (value 6): subject was laying down during the test
Measurement variables in the datasets of ‘Data_merge’ and ‘tidy.mean.txt’
•	tBodyAccMeanX
•	tBodyAccMeanY
•	tBodyAccMeanZ
•	tBodyAccStdX
•	tBodyAccStdY
•	tBodyAccStdZ
•	tGravityAccMeanX
•	tGravityAccMeanY
•	tGravityAccMeanZ
•	tGravityAccStdX
•	tGravityAccStdY
•	tGravityAccStdZ
•	tBodyAccJerkMeanX
•	tBodyAccJerkMeanY
•	tBodyAccJerkMeanZ
•	tBodyAccJerkStdX
•	tBodyAccJerkStdY
•	tBodyAccJerkStdZ
•	tBodyGyroMeanX
•	tBodyGyroMeanY
•	tBodyGyroMeanZ
•	tBodyGyroStdX
•	tBodyGyroStdY
•	tBodyGyroStdZ
•	tBodyGyroJerkMeanX
•	tBodyGyroJerkMeanY
•	tBodyGyroJerkMeanZ
•	tBodyGyroJerkStdX
•	tBodyGyroJerkStdY
•	tBodyGyroJerkStdZ
•	tBodyAccMagMean
•	tBodyAccMagStd
•	tGravityAccMagMean
•	tGravityAccMagStd
•	tBodyAccJerkMagMean
•	tBodyAccJerkMagStd
•	tBodyGyroMagMean
•	tBodyGyroMagStd
•	tBodyGyroJerkMagMean
•	tBodyGyroJerkMagStd
•	fBodyAccMeanX
•	fBodyAccMeanY
•	fBodyAccMeanZ
•	fBodyAccStdX
•	fBodyAccStdY
•	fBodyAccStdZ
•	fBodyAccMeanFreqX
•	fBodyAccMeanFreqY
•	fBodyAccMeanFreqZ
•	fBodyAccJerkMeanX
•	fBodyAccJerkMeanY
•	fBodyAccJerkMeanZ
•	fBodyAccJerkStdX
•	fBodyAccJerkStdY
•	fBodyAccJerkStdZ
•	fBodyAccJerkMeanFreqX
•	fBodyAccJerkMeanFreqY
•	fBodyAccJerkMeanFreqZ
•	fBodyGyroMeanX
•	fBodyGyroMeanY
•	fBodyGyroMeanZ
•	fBodyGyroStdX
•	fBodyGyroStdY
•	fBodyGyroStdZ
•	fBodyGyroMeanFreqX
•	fBodyGyroMeanFreqY
•	fBodyGyroMeanFreqZ
•	fBodyAccMagMean
•	fBodyAccMagStd
•	fBodyAccMagMeanFreq
•	fBodyBodyAccJerkMagMean
•	fBodyBodyAccJerkMagStd
•	fBodyBodyAccJerkMagMeanFreq
•	fBodyBodyGyroMagMean
•	fBodyBodyGyroMagStd
•	fBodyBodyGyroMagMeanFreq
•	fBodyBodyGyroJerkMagMean
•	fBodyBodyGyroJerkMagStd
•	fBodyBodyGyroJerkMagMeanFreq


