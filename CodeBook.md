# Human Activity Recognition Using Smartphones Dataset (Version 1.0)

## Description

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

## Final Dataset
The final set is called **tidyData.txt** and includes the following columns:
- **Activity:** the activity that the subject was performing such as:
    - Walking
    - Walking upstairs
    - Walking downstairs
    - Sitting
    - Standing
    - Laying

- **SubjectID:** ID of the participant. Its range is from 1 to 30 corresponding to 30
participants.

- **ActivityID:** ID of the activity corresponding to the activites mentioned above.

- **Mean and Standard Deviation of Variabls:** 79 columns containing the mean and 
standard deviation of variables collected in this study. The list of the variables
could be found in the **features.txt** file.

The features selected for this dataset come from the accelerometer and gyroscope 3-axial raw signals Time-Acceleration-XYZ and Time-Gyro-XYZ. These time domain signals (prefix 'Time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (Time-BodyAcceleration-XYZ and Time-GravityAccleration-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccJerk-XYZ and Time-BodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (Time-BodyAccelerationMagnitude, Time-GravityAccMag, Time-BodyAccelerationJerkMagnitude, Time-BodyGyroMagnitude, Time-BodyGyroJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing Freq-BodyAcceleration-XYZ, Freq-BodyAccelerationJerk-XYZ, Freq-BodyGyro-XYZ, Freq-BodyAccelerationJerkMag, Freq-BodyGyroMagnitude, Freq-BodyGyroJerkMagnitude. (Note the 'Freq' to indicate frequency domain signals).
