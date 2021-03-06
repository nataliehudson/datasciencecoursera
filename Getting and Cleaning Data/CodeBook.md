## Excerpt from original codebook

Below are excerpts from the description of the data capture process and the original variables in the codebook provided with the original UCI HAR dataset in "features_info.txt" and "README.txt".

>Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - UniversitÓ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

>The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

>Features are normalized and bounded within [-1,1]

>Feature Selection 
=================

>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

>These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

>tBodyAcc-XYZ
>tGravityAcc-XYZ
>tBodyAccJerk-XYZ
>tBodyGyro-XYZ
>tBodyGyroJerk-XYZ
>tBodyAccMag
>tGravityAccMag
>tBodyAccJerkMag
>tBodyGyroMag
>tBodyGyroJerkMag
>fBodyAcc-XYZ
>fBodyAccJerk-XYZ
>fBodyGyro-XYZ
>fBodyAccMag
>fBodyAccJerkMag
>fBodyGyroMag
>fBodyGyroJerkMag

>The set of variables that were estimated from these signals are: 

>mean(): Mean value
>std(): Standard deviation

## Description of new table

The first two columns in the "averages" table, "activity" and "subject", indicate the activity performed (LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS) and the number of the subject (1-30), respectively.

The remaining 66 columns are each the average of a mean or standard deviation of a measurement provided in the train and test data sets. These columns are named by replacing any punctuation in the original mean/std column name with periods (replacing multiple consecutive punctuation marks with a single period), then prepending "avg." to the column name.

Here is the complete list of column names in "averages":

activity

subject

avg.tBodyAcc.mean.X

avg.tBodyAcc.mean.Y

avg.tBodyAcc.mean.Z

avg.tBodyAcc.std.X

avg.tBodyAcc.std.Y

avg.tBodyAcc.std.Z

avg.tGravityAcc.mean.X

avg.tGravityAcc.mean.Y

avg.tGravityAcc.mean.Z

avg.tGravityAcc.std.X

avg.tGravityAcc.std.Y

avg.tGravityAcc.std.Z

avg.tBodyAccJerk.mean.X

avg.tBodyAccJerk.mean.Y

avg.tBodyAccJerk.mean.Z

avg.tBodyAccJerk.std.X

avg.tBodyAccJerk.std.Y

avg.tBodyAccJerk.std.Z

avg.tBodyGyro.mean.X

avg.tBodyGyro.mean.Y

avg.tBodyGyro.mean.Z

avg.tBodyGyro.std.X

avg.tBodyGyro.std.Y

avg.tBodyGyro.std.Z

avg.tBodyGyroJerk.mean.X

avg.tBodyGyroJerk.mean.Y

avg.tBodyGyroJerk.mean.Z

avg.tBodyGyroJerk.std.X

avg.tBodyGyroJerk.std.Y

avg.tBodyGyroJerk.std.Z

avg.tBodyAccMag.mean

avg.tBodyAccMag.std

avg.tGravityAccMag.mean

avg.tGravityAccMag.std

avg.tBodyAccJerkMag.mean

avg.tBodyAccJerkMag.std

avg.tBodyGyroMag.mean

avg.tBodyGyroMag.std

avg.tBodyGyroJerkMag.mean

avg.tBodyGyroJerkMag.std

avg.fBodyAcc.mean.X

avg.fBodyAcc.mean.Y

avg.fBodyAcc.mean.Z

avg.fBodyAcc.std.X

avg.fBodyAcc.std.Y

avg.fBodyAcc.std.Z

avg.fBodyAccJerk.mean.X

avg.fBodyAccJerk.mean.Y

avg.fBodyAccJerk.mean.Z

avg.fBodyAccJerk.std.X

avg.fBodyAccJerk.std.Y

avg.fBodyAccJerk.std.Z

avg.fBodyGyro.mean.X

avg.fBodyGyro.mean.Y

avg.fBodyGyro.mean.Z

avg.fBodyGyro.std.X

avg.fBodyGyro.std.Y

avg.fBodyGyro.std.Z

avg.fBodyAccMag.mean

avg.fBodyAccMag.std

avg.fBodyBodyAccJerkMag.mean

avg.fBodyBodyAccJerkMag.std

avg.fBodyBodyGyroMag.mean

avg.fBodyBodyGyroMag.std

avg.fBodyBodyGyroJerkMag.mean

avg.fBodyBodyGyroJerkMag.std