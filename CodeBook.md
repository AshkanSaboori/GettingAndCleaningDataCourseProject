# Human Activity Recognition Using Smartphones Dataset

## Description

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated
body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment.

The data set includes the following files:

- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

## Project Steps
The following steps have been performed in order to obtain the final and tidy data
set. The final data set has been uploaded to the repository as a text file called
**tidyData.txt**. 

### Step-1: Download and unzip the dataset
Download the unzip the original dataset files. These files were available as a 
zipped folder [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

### Step-2: Merge the training and test datasets
After downloading and saving the files into the local directory, the following files
were read into R and created corresponding variables.

- features.txt
- activity_labels.txt
- subject_train.txt
- x_train.txt
- y_train.txt
- subject_test.txt
- x_test.txt
- y_test.txt

### Step-3: Extracts the mean and standard deviation for each measurement
This step has been carried out using regular expressions. Package `stringr` was used
to perform the text mining. All the column names
containing the two words **mean** and **std** were extracted.

### Step-4: Use descriptive activity names to name the activities in the data set
The dataset made in the previous step was merged with **activity_labels** data frame
to add descriptive activity names to the dataset. **activity_labels.txt** file
contained the descriptive activity name for each activity id availabe in the dataset.

### Step-5: Label the data set with descriptive variable names
In this step, regular expressions were used to change some abbreviations to the full
descriptive names and to remove the paranthesis.

### Step-6: Create a second, independent tidy data set with the average of each variable for each activity and each subject
Package `dplyr` was used to aggregate the dataset in this step. The final dataset
contained 30 rows correponding to 30 participants in this study.
