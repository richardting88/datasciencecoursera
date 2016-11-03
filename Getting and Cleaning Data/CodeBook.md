# Code Book

This code book documents all the important featuress regarding the output dataset "tidy_ds.txt", as well as the input dataset that used to develop it. 

## Background 

The input dataset is the famous "Human Activity Recognition Using Smartphones Dataset". The Smartphone Dataset includes separate files for training and test sets. Each record in the dataset contains the following information:

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label (1=WALKING 2=WALKING UPSTAIRS 3=WALKING DOWNSTAIRS 4=SITTING 5=STANDING 6=LAYING).
* An identifier of the subject who carried out the experiment.

For more information about this dataset contact: activityrecognition@smartlab.ws

## Process

The output dataset is developed through the following steps:

* Merge the training and test sets to create one data set
* Extracts only the measurements on the mean and standard deviation for each measurement
* Calculated the average of each variable for each activity and each subject

## Variables

* Subject
* Activity_desc
* TimeBodyAccMean()-X
* TimeBodyAccMean()-Y
* TimeBodyAccMean()-Z
* TimeBodyAccSTD()-X
* TimeBodyAccSTD()-Y
* TimeBodyAccSTD()-Z
* TimeGravityAccMean()-X
* TimeGravityAccMean()-Y
* TimeGravityAccMean()-Z
* TimeGravityAccSTD()-X
* TimeGravityAccSTD()-Y
* TimeGravityAccSTD()-Z
* TimeBodyAccJerkMean()-X
* TimeBodyAccJerkMean()-Y
* TimeBodyAccJerkMean()-Z
* TimeBodyAccJerkSTD()-X
* TimeBodyAccJerkSTD()-Y
* TimeBodyAccJerkSTD()-Z
* TimeBodyGyroMean()-X
* TimeBodyGyroMean()-Y
* TimeBodyGyroMean()-Z
* TimeBodyGyroSTD()-X
* TimeBodyGyroSTD()-Y
* TimeBodyGyroSTD()-Z
* TimeBodyGyroJerkMean()-X
* TimeBodyGyroJerkMean()-Y
* TimeBodyGyroJerkMean()-Z
* TimeBodyGyroJerkSTD()-X
* TimeBodyGyroJerkSTD()-Y
* TimeBodyGyroJerkSTD()-Z
* TimeBodyAccMagMean()
* TimeBodyAccMagSTD()
* TimeGravityAccMagMean()
* TimeGravityAccMagSTD()
* TimeBodyAccJerkMagMean()
* TimeBodyAccJerkMagSTD()
* TimeBodyGyroMagMean()
* TimeBodyGyroMagSTD()
* TimeBodyGyroJerkMagMean()
* TimeBodyGyroJerkMagSTD()
* FrequencyBodyAccMean()-X
* FrequencyBodyAccMean()-Y
* FrequencyBodyAccMean()-Z
* FrequencyBodyAccSTD()-X
* FrequencyBodyAccSTD()-Y
* FrequencyBodyAccSTD()-Z
* FrequencyBodyAccMeanFreq()-X
* FrequencyBodyAccMeanFreq()-Y
* FrequencyBodyAccMeanFreq()-Z
* FrequencyBodyAccJerkMean()-X
* FrequencyBodyAccJerkMean()-Y
* FrequencyBodyAccJerkMean()-Z
* FrequencyBodyAccJerkSTD()-X
* FrequencyBodyAccJerkSTD()-Y
* FrequencyBodyAccJerkSTD()-Z
* FrequencyBodyAccJerkMeanFreq()-X
* FrequencyBodyAccJerkMeanFreq()-Y
* FrequencyBodyAccJerkMeanFreq()-Z
* FrequencyBodyGyroMean()-X
* FrequencyBodyGyroMean()-Y
* FrequencyBodyGyroMean()-Z
* FrequencyBodyGyroSTD()-X
* FrequencyBodyGyroSTD()-Y
* FrequencyBodyGyroSTD()-Z
* FrequencyBodyGyroMeanFreq()-X
* FrequencyBodyGyroMeanFreq()-Y
* FrequencyBodyGyroMeanFreq()-Z
* FrequencyBodyAccMagMean()
* FrequencyBodyAccMagSTD()
* FrequencyBodyAccMagMeanFreq()
* FrequencyBodyBodyAccJerkMagMean()
* FrequencyBodyBodyAccJerkMagSTD()
* FrequencyBodyBodyAccJerkMagMeanFreq()
* FrequencyBodyBodyGyroMagMean()
* FrequencyBodyBodyGyroMagSTD()
* FrequencyBodyBodyGyroMagMeanFreq()
* FrequencyBodyBodyGyroJerkMagMean()
* FrequencyBodyBodyGyroJerkMagSTD()
* FrequencyBodyBodyGyroJerkMagMeanFreq()
* angle(TimeBodyAccMean,gravity)
* angle(TimeBodyAccJerkMean),gravityMean)
* angle(TimeBodyGyroMean,gravityMean)
* angle(TimeBodyGyroJerkMean,gravityMean)
* angle(X,gravityMean)
* angle(Y,gravityMean)
* angle(Z,gravityMean)
