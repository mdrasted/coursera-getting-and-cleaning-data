<!--- 
title: "README.md"
author: "Morten D. Rasted"
date: "29 apr 2017"
output: html_document
--->

# Getting and Cleaning Data Course Project

This is the course project for the Getting and Cleaning Data Coursera course.
The R script, `run_analysis.R`, does the following:

1. The script requires that the file `getdata_projectfiles_UCI HAR Dataset.zip` is already downloaded and the contents is      unzipped to the `UCI HAR Dataset` folder.
2. Reads the dataset activity labels and features.
3. Renames the dataset labels with descriptive variable names.
4. Reads the `train` and `test` datasets and extracts only the measurements on the mean and standard deviation that we want.
5. Merges the training and test datasets and adds the new labels.
6. Converts `activities` and `subjects` into factors.
7. Writes the tidy dataset with the average of each variable to the file `tidydata.txt`.