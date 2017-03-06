This codebook describes the data contained within cm.csv, which is a file containing the tidy data set requested in the assignment instructions. 

cm.csv contains information on the activity, subject, and variable with a mean measured value for each. 

Only the rows containing either mean or st-dev were selected for analysis and are shown below. 

run_analysis.R downloads and unzips the data files and reads in the data. It then selects all rows containing either "mean" or "std" values, 
and binds the data together to form one data set. The data is then labelled accrding to the features file and transformed by 'melt' to a longform tidy set.
Finally the code takes the mean for each subject, activity, and variable, and outputs the new data to a csv file along with a codebook.  

=====================================================================================

   subject

-------------------------------------------------------------------------------------

   Storage mode: integer

          Min.:   1.000
       1st Qu.:   8.000
        Median:  15.500
          Mean:  15.500
       3rd Qu.:  23.000
          Max.:  30.000

=====================================================================================

   activity

-------------------------------------------------------------------------------------

   Storage mode: integer
   Factor with 6 levels

        Values and labels    N    Percent 
                                          
   1 'WALKING'            2370   16.7     
   2 'WALKING_UPSTAIRS'   2370   16.7     
   3 'WALKING_DOWNSTAIRS' 2370   16.7     
   4 'SITTING'            2370   16.7     
   5 'STANDING'           2370   16.7     
   6 'LAYING'             2370   16.7     

=====================================================================================

   variable

-------------------------------------------------------------------------------------

   Storage mode: integer
   Factor with 79 levels

                      Values and labels   N   Percent
                                                     
    1 'tBodyAcc-mean()-X'               180   1.3    
    2 'tBodyAcc-mean()-Y'               180   1.3    
    3 'tBodyAcc-mean()-Z'               180   1.3    
    4 'tGravityAcc-mean()-X'            180   1.3    
    5 'tGravityAcc-mean()-Y'            180   1.3    
    6 'tGravityAcc-mean()-Z'            180   1.3    
    7 'tBodyAccJerk-mean()-X'           180   1.3    
    8 'tBodyAccJerk-mean()-Y'           180   1.3    
    9 'tBodyAccJerk-mean()-Z'           180   1.3    
   10 'tBodyGyro-mean()-X'              180   1.3    
   11 'tBodyGyro-mean()-Y'              180   1.3    
   12 'tBodyGyro-mean()-Z'              180   1.3    
   13 'tBodyGyroJerk-mean()-X'          180   1.3    
   14 'tBodyGyroJerk-mean()-Y'          180   1.3    
   15 'tBodyGyroJerk-mean()-Z'          180   1.3    
   16 'tBodyAccMag-mean()'              180   1.3    
   17 'tGravityAccMag-mean()'           180   1.3    
   18 'tBodyAccJerkMag-mean()'          180   1.3    
   19 'tBodyGyroMag-mean()'             180   1.3    
   20 'tBodyGyroJerkMag-mean()'         180   1.3    
   21 'fBodyAcc-mean()-X'               180   1.3    
   22 'fBodyAcc-mean()-Y'               180   1.3    
   23 'fBodyAcc-mean()-Z'               180   1.3    
   24 'fBodyAcc-meanFreq()-X'           180   1.3    
   25 'fBodyAcc-meanFreq()-Y'           180   1.3    
   26 'fBodyAcc-meanFreq()-Z'           180   1.3    
   27 'fBodyAccJerk-mean()-X'           180   1.3    
   28 'fBodyAccJerk-mean()-Y'           180   1.3    
   29 'fBodyAccJerk-mean()-Z'           180   1.3    
   30 'fBodyAccJerk-meanFreq()-X'       180   1.3    
   31 'fBodyAccJerk-meanFreq()-Y'       180   1.3    
   32 'fBodyAccJerk-meanFreq()-Z'       180   1.3    
   33 'fBodyGyro-mean()-X'              180   1.3    
   34 'fBodyGyro-mean()-Y'              180   1.3    
   35 'fBodyGyro-mean()-Z'              180   1.3    
   36 'fBodyGyro-meanFreq()-X'          180   1.3    
   37 'fBodyGyro-meanFreq()-Y'          180   1.3    
   38 'fBodyGyro-meanFreq()-Z'          180   1.3    
   39 'fBodyAccMag-mean()'              180   1.3    
   40 'fBodyAccMag-meanFreq()'          180   1.3    
   41 'fBodyBodyAccJerkMag-mean()'      180   1.3    
   42 'fBodyBodyAccJerkMag-meanFreq()'  180   1.3    
   43 'fBodyBodyGyroMag-mean()'         180   1.3    
   44 'fBodyBodyGyroMag-meanFreq()'     180   1.3    
   45 'fBodyBodyGyroJerkMag-mean()'     180   1.3    
   46 'fBodyBodyGyroJerkMag-meanFreq()' 180   1.3    
   47 'tBodyAcc-std()-X'                180   1.3    
   48 'tBodyAcc-std()-Y'                180   1.3    
   49 'tBodyAcc-std()-Z'                180   1.3    
   50 'tGravityAcc-std()-X'             180   1.3    
   51 'tGravityAcc-std()-Y'             180   1.3    
   52 'tGravityAcc-std()-Z'             180   1.3    
   53 'tBodyAccJerk-std()-X'            180   1.3    
   54 'tBodyAccJerk-std()-Y'            180   1.3    
   55 'tBodyAccJerk-std()-Z'            180   1.3    
   56 'tBodyGyro-std()-X'               180   1.3    
   57 'tBodyGyro-std()-Y'               180   1.3    
   58 'tBodyGyro-std()-Z'               180   1.3    
   59 'tBodyGyroJerk-std()-X'           180   1.3    
   60 'tBodyGyroJerk-std()-Y'           180   1.3    
   61 'tBodyGyroJerk-std()-Z'           180   1.3    
   62 'tBodyAccMag-std()'               180   1.3    
   63 'tGravityAccMag-std()'            180   1.3    
   64 'tBodyAccJerkMag-std()'           180   1.3    
   65 'tBodyGyroMag-std()'              180   1.3    
   66 'tBodyGyroJerkMag-std()'          180   1.3    
   67 'fBodyAcc-std()-X'                180   1.3    
   68 'fBodyAcc-std()-Y'                180   1.3    
   69 'fBodyAcc-std()-Z'                180   1.3    
   70 'fBodyAccJerk-std()-X'            180   1.3    
   71 'fBodyAccJerk-std()-Y'            180   1.3    
   72 'fBodyAccJerk-std()-Z'            180   1.3    
   73 'fBodyGyro-std()-X'               180   1.3    
   74 'fBodyGyro-std()-Y'               180   1.3    
   75 'fBodyGyro-std()-Z'               180   1.3    
   76 'fBodyAccMag-std()'               180   1.3    
   77 'fBodyBodyAccJerkMag-std()'       180   1.3    
   78 'fBodyBodyGyroMag-std()'          180   1.3    
   79 'fBodyBodyGyroJerkMag-std()'      180   1.3    

=====================================================================================

   means

-------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.998
       1st Qu.:  -0.952
        Median:  -0.342
          Mean:  -0.412
       3rd Qu.:  -0.037
          Max.:   0.975

