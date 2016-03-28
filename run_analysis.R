# 1. Merges the training and the test sets to create one data set.
setwd("/Users/jchgong/Downloads/")
Xdata_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
Label_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
Subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

Xdata_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
Label_test <- read.table("./UCI HAR Dataset/test/y_test.txt") 
Subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

#Merges train and test datasets
Xdata_merge <- rbind(Xdata_train, Xdata_test)


# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
variable_names <- read.table("./UCI HAR Dataset/features.txt")
varNeed.ind <- grep("mean\\(\\)|std\\(\\)", variable_names[, 2])
varNeed.names <- variable_names[varNeed.ind, 2]
varNeed.names <- gsub('-mean', 'Mean', varNeed.names)
varNeed.names <- gsub('-std', 'Std', varNeed.names)
varNeed.names <- gsub('[-()]', '', varNeed.names)
Xdata_merge<-Xdata_merge[,varNeed.ind]

Subject_merge<-rbind(Subject_train,Subject_test)
Lable_merge<-rbind(Label_train,Label_test)
Data_merge<-cbind(Subject_merge,Label_merge,Xdata_merge)

# 3. Uses descriptive activity names to name the activities in the data set
activity <- read.table("./UCI HAR Dataset/activity_labels.txt")
activityLabel <- activity[Label_merge[, 1], 2]
Data_merge[, 2] <- activityLabel


# 4. Appropriately labels the data set with descriptive activity names. 
colnames(Data_merge) <- c("subject", "activity", varNeed.names)
#print out the first dataset
write.table(Data_merge, "Merged dataset.txt") 



# Step5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
subjectNum <- length(table(Subject_merge[1]))
activityNum <- length(table(activity[1])) 
columnNum <- dim(Data_merge)[2]

tidy.mean <- matrix(0, nrow=subjectNum*activityNum, ncol=columnNum) 
tidy.mean <- as.data.frame(tidy)
colnames(tidy.mean) <- colnames(Data_merge)
row <- 1

for(i in 1:subjectNum) {
  for(j in 1:activityNum) {
    tidy.mean[row, 1] <- sort(unique(Subject_merge)[, 1])[i]
    tidy.mean[row, 2] <- activity[j, 2]
    sub <- i == Data_merge$subject
    act <- activity[j, 2] == Data_merge$activity
    tidy.mean[row, 3:columnNum] <- colMeans(Data_merge[sub&act, 3:columnNum])
    row <- row + 1
  }
}
#print out the second dataset
write.table(tidy.mean, "tidy.means.txt") 

