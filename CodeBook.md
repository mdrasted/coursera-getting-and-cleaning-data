<!---
title: "Code Book"
author: "Morten D. Rasted"
date: "29 apr 2017"
output: html_document
--->

# Code Book

This code book summarizes the resulting data fields in `tidydata.txt`.

## Identifiers

* `subject` - The ID of the test subject.
* `activity` - The type of activity performed when the corresponding measurements were taken.

## Measurements

* `tBodyAccMeanX`
* `tBodyAccMeanY`
* `tBodyAccMeanZ`
* `tBodyAccStandardDevX`
* `tBodyAccStandardDevY`
* `tBodyAccStandardDevZ`
* `tGravityAccMeanX`
* `tGravityAccMeanY`
* `tGravityAccMeanZ`
* `tGravityAccStandardDevX`
* `tGravityAccStandardDevY`
* `tGravityAccStandardDevZ`
* `tBodyAccJerkMeanX`
* `tBodyAccJerkMeanY`
* `tBodyAccJerkMeanZ`
* `tBodyAccJerkStandardDevX`
* `tBodyAccJerkStandardDevY`
* `tBodyAccJerkStandardDevZ`
* `tBodyGyroMeanX`
* `tBodyGyroMeanY`
* `tBodyGyroMeanZ`
* `tBodyGyroStandardDevX`
* `tBodyGyroStandardDevY`
* `tBodyGyroStandardDevZ`
* `tBodyGyroJerkMeanX`
* `tBodyGyroJerkMeanY`
* `tBodyGyroJerkMeanZ`
* `tBodyGyroJerkStandardDevX`
* `tBodyGyroJerkStandardDevY`
* `tBodyGyroJerkStandardDevZ`
* `tBodyAccMagMean`
* `tBodyAccMagStandardDev`
* `tGravityAccMagMean`
* `tGravityAccMagStandardDev`
* `tBodyAccJerkMagMean`
* `tBodyAccJerkMagStandardDev`
* `tBodyGyroMagMean`
* `tBodyGyroMagStandardDev`
* `tBodyGyroJerkMagMean`
* `tBodyGyroJerkMagStandardDev`
* `fBodyAccMeanX`
* `fBodyAccMeanY`
* `fBodyAccMeanZ`
* `fBodyAccStandardDevX`
* `fBodyAccStandardDevY`
* `fBodyAccStandardDevZ`
* `fBodyAccMeanFreqX`
* `fBodyAccMeanFreqY`
* `fBodyAccMeanFreqZ`
* `fBodyAccJerkMeanX`
* `fBodyAccJerkMeanY`
* `fBodyAccJerkMeanZ`
* `fBodyAccJerkStandardDevX`
* `fBodyAccJerkStandardDevY`
* `fBodyAccJerkStandardDevZ`
* `fBodyAccJerkMeanFreqX`
* `fBodyAccJerkMeanFreqY`
* `fBodyAccJerkMeanFreqZ`
* `fBodyGyroMeanX`
* `fBodyGyroMeanY`
* `fBodyGyroMeanZ`
* `fBodyGyroStandardDevX`
* `fBodyGyroStandardDevY`
* `fBodyGyroStandardDevZ`
* `fBodyGyroMeanFreqX`
* `fBodyGyroMeanFreqY`
* `fBodyGyroMeanFreqZ`
* `fBodyAccMagMean`
* `fBodyAccMagStandardDev`
* `fBodyAccMagMeanFreq`
* `fBodyBodyAccJerkMagMean`
* `fBodyBodyAccJerkMagStandardDev`
* `fBodyBodyAccJerkMagMeanFreq`
* `fBodyBodyGyroMagMean`
* `fBodyBodyGyroMagStandardDev`
* `fBodyBodyGyroMagMeanFreq`
* `fBodyBodyGyroJerkMagMean`
* `fBodyBodyGyroJerkMagStandardDev`
* `fBodyBodyGyroJerkMagMeanFreq`

## Activity Labels

* `WALKING` (value `1`): subject was walking during the test.
* `WALKING_UPSTAIRS` (value `2`): subject was walking up a staircase during the test.
* `WALKING_DOWNSTAIRS` (value `3`): subject was walking down a staircase during the test.
* `SITTING` (value `4`): subject was sitting during the test.
* `STANDING` (value `5`): subject was standing during the test.
* `LAYING` (value `6`): subject was laying down during the test.