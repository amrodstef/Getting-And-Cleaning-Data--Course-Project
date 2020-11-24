# Getting-And-Cleaning-Data--Couse-Project
This document refers to the steps taken during the course project of Getting and Cleaning Data course:
It includes the R script run_analysis.R, as the following:

1.In the script, the file listed in the codebook was downloaded annd unzziped to a directory in my computer. 

2.I listed all the files and folders that the folder contains and then beginned to read the files in the directory.

3.The features and activities objects contains the files with the measurenments taken in the experiment and que activities done by the participants.

4.The data collected during the experiment was read within the 'test' and 'train' objects.

5.(Steps 01-02)These objects, containing the measurenments of the experiment, was merged into new datasets and were given them names, individually and by the 'features' dataset.

6.The columns which containd standart deviation and mean measurenments was selected and, then the merged dataset from the same pattern of selection.

7.(Step 03) These columns were given names.

8.(Step 4) Some names of the columns (from 'features') were altered for better comprehension and lecture.

9.(Step 05) A new, tidy dataset was created ('tidydata.txt') containing the means of all variables (from each participant and each activity performed by she/he) from the merged dataset created before.
