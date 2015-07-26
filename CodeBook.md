##Getting and Cleaning Data Course Project

### Script notes
(More notes in the script: <scriptForTidyData.R>)

1. Downloads data set and unzipping it.
2. Creates vectors of features and activity labels.
3. Gives descriptive names to the features.
4. Reads targeted data and merging it into 1 data set.
5. Factorizes vectors from #2.
6. Creates a data set with mean values of each feature for each subject/activity pair.
7. Writes down the data set.

### Variable notes

*subject - ID of the participant
*activity - type of activity


    TimeDomain.BodyAcc.Mean.X
    TimeDomain.BodyAcc.Mean.Y
    TimeDomain.BodyAcc.Mean.Z
    TimeDomain.BodyAcc.Std.X
    TimeDomain.BodyAcc.Std.Y
    TimeDomain.BodyAcc.Std.Z
    TimeDomain.Gravity.AccMean.X
    TimeDomain.Gravity.AccMean.Y
    TimeDomain.Gravity.AccMean.Z
    TimeDomain.Gravity.AccStd.X
    TimeDomain.Gravity.AccStd.Y
    TimeDomain.Gravity.AccStd.Z
    TimeDomain.BodyAcc.JerkMean.X
    TimeDomain.BodyAcc.JerkMean.Y
    TimeDomain.BodyAcc.JerkMean.Z
    TimeDomain.BodyAcc.JerkStd.X
    TimeDomain.BodyAcc.JerkStd.Y
    TimeDomain.BodyAcc.JerkStd.Z
    TimeDomain.BodyGyro.Mean.X
    TimeDomain.BodyGyro.Mean.Y
    TimeDomain.BodyGyro.Mean.Z
    TimeDomain.BodyGyro.Std.X
    TimeDomain.BodyGyro.Std.Y
    TimeDomain.BodyGyro.Std.Z
    TimeDomain.BodyGyroJerk.Mean.X
    TimeDomain.BodyGyroJerk.Mean.Y
    TimeDomain.BodyGyroJerk.Mean.Z
    TimeDomain.BodyGyroJerk.Std.X
    TimeDomain.BodyGyroJerk.Std.Y
    TimeDomain.BodyGyroJerk.Std.Z
    TimeDomain.BodyAccMag.Mean
    TimeDomain.BodyAccMag.Std
    TimeDomain.GravityAccMag.Mean
    TimeDomain.GravityAccMag.Std
    TimeDomain.BodyAccJerkMag.Mean
    TimeDomain.BodyAccJerkMag.Std
    TimeDomain.BodyGyroMag.Mean
    TimeDomain.BodyGyroMag.Std
    TimeDomain.BodyGyroJerkMag.Mean
    TimeDomain.BodyGyroJerkMag.Std
    FrequencyDomain.BodyAcc.Mean.X
    FrequencyDomain.BodyAcc.Mean.Y
    FrequencyDomain.BodyAcc.Mean.Z
    FrequencyDomain.BodyAcc.Std.X
    FrequencyDomain.BodyAcc.Std.Y
    FrequencyDomain.BodyAcc.Std.Z
    FrequencyDomain.BodyAccMean.Freq.X
    FrequencyDomain.BodyAccMean.Freq.Y
    FrequencyDomain.BodyAccMean.Freq.Z
    FrequencyDomain.BodyAccJerk.Mean.X
    FrequencyDomain.BodyAccJerk.Mean.Y
    FrequencyDomain.BodyAccJerk.Mean.Z
    FrequencyDomain.BodyAccJerk.Std.X
    FrequencyDomain.BodyAccJerk.Std.Y
    FrequencyDomain.BodyAccJerk.Std.Z
    FrequencyDomain.BodyAccJerk.MeanFreq.X
    FrequencyDomain.BodyAccJerk.MeanFreq.Y
    FrequencyDomain.BodyAccJerk.MeanFreq.Z
    FrequencyDomain.BodyGyro.Mean.X
    FrequencyDomain.BodyGyro.Mean.Y
    FrequencyDomain.BodyGyro.Mean.Z
    FrequencyDomain.BodyGyro.Std.X
    FrequencyDomain.BodyGyro.Std.Y
    FrequencyDomain.BodyGyro.Std.Z
    FrequencyDomain.BodyGyroMean.Freq.X
    FrequencyDomain.BodyGyroMean.Freq.Y
    FrequencyDomain.BodyGyroMean.Freq.Z
    FrequencyDomain.BodyAccMag.Mean
    FrequencyDomain.BodyAccMag.Std
    FrequencyDomain.BodyAccMag.Mean.Freq
    FrequencyDomain.BodyBodyAccJerkMag.Mean
    FrequencyDomain.BodyBodyAccJerkMag.Std
    FrequencyDomain.BodyBodyAccJerkMag.Mean.Freq
    FrequencyDomain.BodyBodyGyroMag.Mean
    FrequencyDomain.BodyBodyGyroMag.Std
    FrequencyDomain.BodyBodyGyroMagMean.Freq
    FrequencyDomain.BodyBodyGyroJerkMag.Mean
    FrequencyDomain.BodyBodyGyroJerkMag.Std
    FrequencyDomain.BodyBodyGyroJerkMag.Mean.Freq
