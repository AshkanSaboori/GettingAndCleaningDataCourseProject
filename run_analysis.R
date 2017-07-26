#load libraries
library(stringr)
library(dplyr)
library(data.table)

#read the data####
#general info
features = fread('./UCI HAR Dataset/features.txt', col.names = c('index', 'feature'))
activityLabels = fread('./UCI HAR Dataset/activity_labels.txt', 
                       col.names = c('activity.code', 'activity'))

#training data
trainSet = fread('./UCI HAR Dataset/train/X_train.txt', header = FALSE,
                 col.names = features$feature)
trainLabel = fread('./UCI HAR Dataset/train/y_train.txt', col.names = 'activity.code')
trainSubject = fread('./UCI HAR Dataset/train/subject_train.txt', col.names = 'subject')
trainSet = cbind(trainSubject, trainLabel, trainSet)

#test data
testSet = fread('./UCI HAR Dataset/test/X_test.txt', header = FALSE,
                col.names = features$feature)
testLabel = fread('./UCI HAR Dataset/test/y_test.txt', col.names = 'activity.code')
testSubject = fread('./UCI HAR Dataset/test/subject_test.txt', col.names = 'subject')
testSet = cbind(testSubject, testLabel, testSet)

#1)merge the training and the test sets to create one data set.
allData = as.data.frame(rbind(trainSet, testSet))

#2)extract only the measurements on the mean and standard deviation for each measurement.
allData = allData[, grepl('subject|activity|mean|std', colnames(allData))]

#3)use descriptive activity names to name the activities in the data set
allData = merge(activityLabels, allData, by = 'activity.code', all.y = TRUE)

#4)appropriately label the data set with descriptive variable names.
colNames = colnames(allData)
colNames = sapply(colNames, function(x){
    x = str_replace_all(x, 'activity.code', 'ActivityID')
    x = str_replace_all(x, '^activity$', 'Activity')
    x = str_replace_all(x, 'subject', 'SubjectID')
    x = str_replace_all(x, '\\(\\)', '')
    x = str_replace_all(x, 'mean', 'Mean')
    x = str_replace_all(x, 'std', 'StdDev')
    x = str_replace_all(x, 'Acc', 'Acceleration')
    x = str_replace_all(x, 'Mag', 'Magnitude')
    x = str_replace_all(x, '^t', 'Time-')
    x = str_replace_all(x, '^f', 'Fourier-')
    return(x)
})
names(colNames) = NULL
colnames(allData) = colNames

#5)create a second, independent tidy data set with 
#the average of each variable for each activity and each subject.
allData2 = allData %>%
    group_by(Activity, SubjectID) %>%
    summarise_all(mean) %>%
    arrange(ActivityID)

#save the dataset
write.table(allData2, file = 'tidyData.txt', sep = '\t')
