###Getting the data to analysis

The original data was taken from the link below, which provide a lot of variables which are following listed:

<a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" class="uri">https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip</a>

For more infomation, acess this link

<a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones" class="uri">http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones</a>

    Identifiers of the data:
    -"subject" gives the ID of the participant in the experiment.
    -"activity" give the activity that the participant was involved.

    Measurenments made through the experiment: -tBodyAccMeanX -tBodyAccMeanY
    -tBodyAccMeanZ 
    -tBodyAccStdX 
    -tBodyAccStdY 
    -tBodyAccStdZ
    -tGravityAccMeanX 
    -tGravityAccMeanY 
    -tGravityAccMeanZ 
    -tGravityAccStdX
    -tGravityAccStdY 
    -tGravityAccStdZ 
    -tBodyAccJerkMeanX 
    -tBodyAccJerkMeanY
    -tBodyAccJerkMeanZ 
    -tBodyAccJerkStdX 
    -tBodyAccJerkStdY 
    -tBodyAccJerkStdZ
    -tBodyGyroMeanX 
    -tBodyGyroMeanY 
    -tBodyGyroMeanZ 
    -tBodyGyroStdX
    -tBodyGyroStdY 
    -tBodyGyroStdZ 
    -tBodyGyroJerkMeanX 
    -tBodyGyroJerkMeanY
    -tBodyGyroJerkMeanZ
    -tBodyGyroJerkStdX 
    -tBodyGyroJerkStdY
    -tBodyGyroJerkStdZ 
    -tBodyAccMagMean 
    -tBodyAccMagStd 
    -tGravityAccMagMean
    -tGravityAccMagStd 
    -tBodyAccJerkMagMean 
    -tBodyAccJerkMagStd
    -tBodyGyroMagMean 
    -tBodyGyroMagStd 
    -tBodyGyroJerkMagMean
    -tBodyGyroJerkMagStd 
    -fBodyAccMeanX 
    -fBodyAccMeanY 
    -fBodyAccMeanZ
    -fBodyAccStdX 
    -fBodyAccStdY 
    -fBodyAccStdZ 
    -fBodyAccMeanFreqX
    -fBodyAccMeanFreqY 
    -fBodyAccMeanFreqZ
    -fBodyAccJerkMeanX
    -fBodyAccJerkMeanY
    -fBodyAccJerkMeanZ 
    -fBodyAccJerkStdX
    -fBodyAccJerkStdY
    -fBodyAccJerkStdZ 
    -fBodyAccJerkMeanFreqX
    -fBodyAccJerkMeanFreqY
    -fBodyAccJerkMeanFreqZ 
    -fBodyGyroMeanX
    -fBodyGyroMeanY 
    -fBodyGyroMeanZ 
    -fBodyGyroStdX 
    -fBodyGyroStdY
    -fBodyGyroStdZ 
    -fBodyGyroMeanFreqX 
    -fBodyGyroMeanFreqY
    -fBodyGyroMeanFreqZ 
    -fBodyAccMagMean 
    -fBodyAccMagStd
    -fBodyAccMagMeanFreq 
    -fBodyBodyAccJerkMagMean 
    -fBodyBodyAccJerkMagStd
    -fBodyBodyAccJerkMagMeanFreq  
    -fBodyBodyGyroMagMean 
    -fBodyBodyGyroMagStd 
    -fBodyBodyGyroMagMeanFreq
    -fBodyBodyGyroJerkMagMean 
    -fBodyBodyGyroJerkMagStd
    -fBodyBodyGyroJerkMagMeanFreq

###The original data was modified:

    -Merging the 'train' and 'test' files into a single dataset;
    -Extracting, from the original variables, only those which contains standart deviation and means of the variables collected;
    -Giving descriptive names to the variables and making the originals more comprehensive.
    -In the end, was created a tidy new dataset.
