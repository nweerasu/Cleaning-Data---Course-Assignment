# CodeBook.md

The original dataset can be found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Within the above dataset, the files used by the run_analysis.R script is as follows:
./UCI HAR Dataset/test/X_test.txt - containing 561 test variables and 2947 observations  
./UCI HAR Dataset/train/X_train.txt - containing 561 test variables and 7352 observations  
./UCI HAR Dataset/train/y_train.txt - containing 1 training variable (1-5) corresponding to features.txt and 7352 observations; pairs with X_train.txt  
./UCI HAR Dataset/test/y_test.txt - containing 1 training variable (1-5), corresponding to features.txt and 2947 observations; pairs with X_test.txt  
./UCI HAR Dataset/features.txt - containing factor levels and activity types (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)  
./UCI HAR Dataset/train/subject_train.txt - contains 1 variable containing subject numbers and 7352 observations  
./UCI HAR Dataset/test/subject_test.txt - contains 1 variable with subject numbers and 2947 observations  

## tidy_means() Script
This script downloads, unzips, combines, filters, splits and creates a tidy table.
From this tidy table, a second independent tidy data set is made with the average of each variable for each activity and each subject.  
Feature means are normalized and bounded within [-1,1].

## Data Transformations:
The final tidydata dataset is based on the original transformed dataset. 

## Variable information for final dataset (tidy_UCI_HAR.csv)
Variable | Class
---------|-----------
subject | Integer
test | Factor
timebodyaccmeanx | Numeric (mean)
timebodyaccmeany | Numeric (mean)
timebodyaccmeanz | Numeric (mean)
timebodyaccstdx | Numeric (mean)
timebodyaccstdy | Numeric (mean)
timebodyaccstdz | Numeric (mean)
timegravityaccmeanx | Numeric (mean)
timegravityaccmeany | Numeric (mean)
timegravityaccmeanz | Numeric (mean)
timegravityaccstdx | Numeric (mean)
timegravityaccstdy | Numeric (mean)
timegravityaccstdz | Numeric (mean)
timebodyaccjerkmeanx | Numeric (mean)
timebodyaccjerkmeany | Numeric (mean)
timebodyaccjerkmeanz | Numeric (mean)
timebodyaccjerkstdx | Numeric (mean)
timebodyaccjerkstdy | Numeric (mean)
timebodyaccjerkstdz | Numeric (mean)
timebodygyromeanx | Numeric (mean)
timebodygyromeany | Numeric (mean)
timebodygyromeanz | Numeric (mean)
timebodygyrostdx | Numeric (mean)
timebodygyrostdy | Numeric (mean)
timebodygyrostdz | Numeric (mean)
timebodygyrojerkmeanx | Numeric (mean)
timebodygyrojerkmeany | Numeric (mean)
timebodygyrojerkmeanz | Numeric (mean)
timebodygyrojerkstdx | Numeric (mean)
timebodygyrojerkstdy | Numeric (mean)
timebodygyrojerkstdz | Numeric (mean)
timebodyaccmagmean | Numeric (mean)
timebodyaccmagstd | Numeric (mean)
timegravityaccmagmean | Numeric (mean)
timegravityaccmagstd | Numeric (mean)
timebodyaccjerkmagmean | Numeric (mean)
timebodyaccjerkmagstd | Numeric (mean)
timebodygyromagmean | Numeric (mean)
timebodygyromagstd | Numeric (mean)
timebodygyrojerkmagmean | Numeric (mean)
timebodygyrojerkmagstd | Numeric (mean)
fftbodyaccmeanx | Numeric (mean)
fftbodyaccmeany | Numeric (mean)
fftbodyaccmeanz | Numeric (mean)
fftbodyaccstdx | Numeric (mean)
fftbodyaccstdy | Numeric (mean)
fftbodyaccstdz | Numeric (mean)
fftbodyaccjerkmeanx | Numeric (mean)
fftbodyaccjerkmeany | Numeric (mean)
fftbodyaccjerkmeanz | Numeric (mean)
fftbodyaccjerkstdx | Numeric (mean)
fftbodyaccjerkstdy | Numeric (mean)
fftbodyaccjerkstdz | Numeric (mean)
fftbodygyromeanx | Numeric (mean)
fftbodygyromeany | Numeric (mean)
fftbodygyromeanz | Numeric (mean)
fftbodygyrostdx | Numeric (mean)
fftbodygyrostdy | Numeric (mean)
fftbodygyrostdz | Numeric (mean)
fftbodyaccmagmean | Numeric (mean)
fftbodyaccmagstd | Numeric (mean)
fftbodybodyaccjerkmagmean | Numeric (mean)
fftbodybodyaccjerkmagstd | Numeric (mean)
fftbodybodygyromagmean | Numeric (mean)
fftbodybodygyromagstd | Numeric (mean)
fftbodybodygyrojerkmagmean | Numeric (mean)
fftbodybodygyrojerkmagstd | Numeric (mean)


=================================================================================

### Background on Data Collection done by Anguita et al. (2013):

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.



tBodyAcc-XYZ  
tGravityAcc-XYZ  
tBodyAccJerk-XYZ  
tBodyGyro-XYZ  
tBodyGyroJerk-XYZ  
tBodyAccMag  
tGravityAccMag  
tBodyAccJerkMag  
tBodyGyroMag  
tBodyGyroJerkMag  
fBodyAcc-XYZ  
fBodyAccJerk-XYZ  
fBodyGyro-XYZ  
fBodyAccMag  
fBodyAccJerkMag  
fBodyGyroMag  
fBodyGyroJerkMag  

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation"

=================================================================



References: 
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
