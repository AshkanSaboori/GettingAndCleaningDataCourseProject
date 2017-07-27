# Getting and Cleaning Data Course Project

### Discription
This project was part of the Johns Hopking data science class project. The purpose 
of this project was to collect and clean the data. The dataset contained 
multiple text files provided as a zipped folder.

One of the most exciting areas in all of data science right now is wearable computing. 
Companies like **Fitbit**, **Nike**, and **Jawbone Up** are racing to develop the 
most advanced algorithms to attract new users. The dataset used is this project
is relavant to this field and have been collected from the accelerometers for the 
Samsung Galaxy S smartphone. A full discription of the data can be found 
<a href = "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones">here.

### Project Summary
As part of this project, the following steps have been taken:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with 
the average of each variable for each activity and each subject.

These steps are provided in the R script file called **run-analysis.R** and can 
be found in this repository.

Additional information on the dataset and how the data cleaning was performed are
brought in the codebook file available in this repository. Also, the final and tidy
dataset is provided as **tidyData.txt** in the repository.
