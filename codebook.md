#Feature Selection: Original Data

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

#Feature Selection: tidy data
All feature names were selected that inluded the string "-mean()-" or "-std()-".  Feature names from the original data has been expanded to a more descriptive name using the substitutions:
- mean = mean
- std = standarddeviation
- ^t = time (^t means first char 't')
- ^f = frequency (^f means first char 'f')
- gyro = gyroscope
- acc = accelerometer
- mag = magnitude

# Feature Units
Subject: Int
Activity: character string
All others are normalized on [-1:1]

#Feature names: 
feature names found in tidyData output and the original feature name from test and train data that mapped to it 

* [1] "subject" - from subject_(train|test).txt, number of test subject (1<i<30)                                                     

* [2] "activity" - from Y_(train|test).txt, number of activity where
        (1 = WALKING, 2 = WALKING_UPSTAIRS, 3 = WALKING_DOWNSTAIRS, 4 = SITTING, 5 = STANDING, 6 = LAYING)                                                    

### Time Domain Body Accelerometer Signal Mean in Coordinates X, Y, Z
* [3] "timebodyaccelerometermeanx" <= tBodyAcc-mean()-X                                 
* [4] "timebodyaccelerometermeany" <= tBodyAcc-mean()-Y                                 
* [5] "timebodyaccelerometermeanz" <= tBodyAcc-mean()-Z

### Time Domain Body Accelerometer Signal Standard Deviation in Coordinates X, Y, Z                                 
* [6] "timebodyaccelerometerstandarddeviationx" <= tBodyAcc-std()-X                    
* [7] "timebodyaccelerometerstandarddeviationy" <= tBodyAcc-std()-Y                    
* [8] "timebodyaccelerometerstandarddeviationz" <= tBodyAcc-std()-Z                    

### Time Domain Gravity Accelerometer Signal Mean in Coordinates X, Y, Z
* [9] "timegravityaccelerometermeanx" <= tGravityAcc-mean()-X                              
* [10] "timegravityaccelerometermeany" <= tGravityAcc-mean()-X                              
* [11] "timegravityaccelerometermeanz" <= tGravityAcc-mean()-X                              

### Time Domain Gravity Accelerometer Signal Standard Deviation in Coordinates X, Y, Z
* [12] "timegravityaccelerometerstandarddeviationx" <= tGravityAcc-std()-X                 
* [13] "timegravityaccelerometerstandarddeviationy" <= tGravityAcc-std()-Y                 
* [14] "timegravityaccelerometerstandarddeviationz" <= tGravityAcc-std()-Z                 

### Time Domain Body Accelerometer Jerk Signal Signal Mean in Coordinates X, Y, Z
* [15] "timebodyaccelerometerjerkmeanx" <= tBodyAccJerk-mean()-X                             
* [16] "timebodyaccelerometerjerkmeany" <= tBodyAccJerk-mean()-Y                             
* [17] "timebodyaccelerometerjerkmeanz" <= tBodyAccJerk-mean()-Z                             

### Time Domain Body Accelerometer Jerk Signal Signal Standard Deviation in Coordinates X, Y, Z
* [18] "timebodyaccelerometerjerkstandarddeviationx" <= tBodyAccJerk-std()-X                
* [19] "timebodyaccelerometerjerkstandarddeviationy" <= tBodyAccJerk-std()-Y                
* [20] "timebodyaccelerometerjerkstandarddeviationz" <= tBodyAccJerk-std()-Z                

### Time Domain Body Gyroscope Signal Mean in Coordinates X, Y, Z
* [21] "timebodygyroscopemeanx" <= tBodyGyro-mean()-X                                     
* [22] "timebodygyroscopemeany" <= tBodyGyro-mean()-Y                                     
* [23] "timebodygyroscopemeanz" <= tBodyGyro-mean()-Z                                     

### Time Domain Body Gyroscope Signal Standard Deviation in Coordinates X, Y, Z
* [24] "timebodygyroscopestandarddeviationx" <= tBodyGyro-std()-X                        
* [25] "timebodygyroscopestandarddeviationy" <= tBodyGyro-std()-Y                        
* [26] "timebodygyroscopestandarddeviationz" <= tBodyGyro-std()-Z                        

### Time Domain Body Gyroscope Jerk Signal Signal Mean in Coordinates X, Y, Z
* [27] "timebodygyroscopejerkmeanx" <= tBodyGyroJerk-mean()-X                                 
* [28] "timebodygyroscopejerkmeany" <= tBodyGyroJerk-mean()-Y                                 
* [29] "timebodygyroscopejerkmeanz" <= tBodyGyroJerk-mean()-Z                                 

### Time Domain Body Gyroscope Jerk Signal Standard Deviation in Coordinates X, Y, Z
* [30] "timebodygyroscopejerkstandarddeviationx" <= tBodyGyroJerk-std()-X                    
* [31] "timebodygyroscopejerkstandarddeviationy" <= tBodyGyroJerk-std()-Y                    
* [32] "timebodygyroscopejerkstandarddeviationz" <= tBodyGyroJerk-std()-Z                    

### Time Domain Body Accelerometer Signal Magnitude Mean & Standard Deviation
* [33] "timebodyaccelerometermagnitudemean" <= tBodyAccMag-mean()                        
* [34] "timebodyaccelerometermagnitudestandarddeviation" <= tBodyAccMag-std()           

### Time Domain Gravity Accelerometer Signal Magnitude Mean & Standard Deviation
* [35] "timegravityaccelerometermagnitudemean" <= tGravityAccMag-mean()                     
* [36] "timegravityaccelerometermagnitudestandarddeviation" <= tGravityAccMag-std()        

### Time Domain Body Accelerometer Jerk Signal Magnitude Mean & Standard Deviation
* [37] "timebodyaccelerometerjerkmagnitudemean" <= tBodyAccJerkMag-mean()                    
* [38] "timebodyaccelerometerjerkmagnitudestandarddeviation" <= tBodyAccJerkMag-std()       

### Time Domain Body Gyroscope Signal Magnitude Mean & Standard Deviation
* [39] "timebodygyroscopemagnitudemean" <= tBodyGyroMag-mean()                            
* [40] "timebodygyroscopemagnitudestandarddeviation" <= tBodyGyroMag-std()               

### Time Domain Body Gyroscope Jerk Signal Magnitude Mean & Standard Deviation
* [41] "timebodygyroscopejerkmagnitudemean" <= tBodyGyroJerkMag-mean()                        
* [42] "timebodygyroscopejerkmagnitudestandarddeviation" <= tBodyGyroJerkMag-std()           

### Frequency Domain Body Accelerometer Signal Mean in Coordinates X, Y, Z
* [43] "frequencybodyaccelerometermeanx" <= fBodyAcc-mean()-X                            
* [44] "frequencybodyaccelerometermeany" <= fBodyAcc-mean()-Y                            
* [45] "frequencybodyaccelerometermeanz" <= fBodyAcc-mean()-Z                            

### Frequency Domain Body Accelerometer Signal Standard Deviation in Coordinates X, Y, Z
* [46] "frequencybodyaccelerometerstandarddeviationx" <= fBodyAcc-std()-X               
* [47] "frequencybodyaccelerometerstandarddeviationy" <= fBodyAcc-std()-Y               
* [48] "frequencybodyaccelerometerstandarddeviationz" <= fBodyAcc-std()-Z               

### Frequency Domain Body Accelerometer Jerk Signal Mean in Coordinates X, Y, Z
* [49] "frequencybodyaccelerometerjerkmeanx" <= fBodyAccJerk-mean()-X                        
* [50] "frequencybodyaccelerometerjerkmeany" <= fBodyAccJerk-mean()-Y                        
* [51] "frequencybodyaccelerometerjerkmeanz" <= fBodyAccJerk-mean()-Z                        

### Frequency Domain Body Accelerometer Jerk Signal Standard Deviation in Coordinates X, Y, Z
* [52] "frequencybodyaccelerometerjerkstandarddeviationx" <= fBodyAccJerk-std()-X           
* [53] "frequencybodyaccelerometerjerkstandarddeviationy" <= fBodyAccJerk-std()-Y           
* [54] "frequencybodyaccelerometerjerkstandarddeviationz" <= fBodyAccJerk-std()-Z           

### Frequency Domain Body Gyroscope Signal Mean in Coordinates X, Y, Z
* [55] "frequencybodygyroscopemeanx" <= fBodyGyro-mean()-X                                
* [56] "frequencybodygyroscopemeany" <= fBodyGyro-mean()-Y                                
* [57] "frequencybodygyroscopemeanz" <= fBodyGyro-mean()-Z                                

### Frequency Domain Body Gyroscope Signal Standard Deviation in Coordinates X, Y, Z
* [58] "frequencybodygyroscopestandarddeviationx" <= fBodyGyro-std()-X                   
* [59] "frequencybodygyroscopestandarddeviationy" <= fBodyGyro-std()-Y                   
* [60] "frequencybodygyroscopestandarddeviationz" <= fBodyGyro-std()-Z                   

### Frequency Domain Body Accelerometer Signal Magnitude Mean & Standard Deviation
* [61] "frequencybodyaccelerometermagnitudemean" <= fBodyAccMag-mean()                    
* [62] "frequencybodyaccelerometermagnitudestandarddeviation" <= fBodyAccMag-std()       

### Frequency Domain Body Body Accelerometer Jerk Signal Magnitude Mean & Standard Deviation
* [63] "frequencybodybodyaccelerometerjerkmagnitudemean" <= fBodyBodyAccJerkMag-mean()            
* [64] "frequencybodybodyaccelerometerjerkmagnitudestandarddeviation" <= fBodyBodyAccJerkMag-std()

### Frequency Domain Body Body Gyroscope Signal Magnitude Mean & Standard Deviation
* [65] "frequencybodybodygyroscopemagnitudemean" <= fBodyBodyGyroMag-mean()                   
* [66] "frequencybodybodygyroscopemagnitudestandarddeviation" <= fBodyBodyGyroMag-std()      

### Frequency Domain Body Body Gyroscope Jerk Signal Magnitude Mean & Standard Deviation
* [67] "frequencybodybodygyroscopejerkmagnitudemean" <= fBodyBodyGyroJerkMag-mean()               
* [68] "frequencybodybodygyroscopejerkmagnitudestandarddeviation" <= fBodyBodyGyroJerkMag-std()
