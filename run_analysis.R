#Downloading the data from the web
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", 
              dest = "./data.zip")

#Unzipping the data into the project directory
unzip("./data.zip", exdir = ".")

#Visualising the list of files inside each directory of the new unzipped data.
list.files("./UCI HAR Dataset")
list.files("./UCI HAR Dataset/train")
list.files("./UCI HAR Dataset/train/Inertial Signals")
list.files("./UCI HAR Dataset/test")
list.files("./UCI HAR Dataset/test/Inertial Signals")

#Reading 'features' and 'activities' from the original data 
features <- read.table("./UCI HAR Dataset/features.txt")
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")

#Reading the 'train' data
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
s_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

#Reading the 'test' data
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
s_test <-read.table("./UCI HAR Dataset/test/subject_test.txt")

#Concatenating data by rows
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
s_data <- rbind(s_train, s_test)


#Setting names to the variables
names(s_data)<-c("Subject")
names(y_data)<- c("Activity")
names(x_data)<- features[, 2]

#Step 01: Merges the training and the test sets to create one dataset:
merged_data <- cbind(x_data, s_data, y_data)
merged_data$Activity <- y_data$V1
merged_data$Subject <- s_data$V1

#Step 02: Filtering data by 'mean' and 'std' columns and extracting theses measurements
sel_feat <- features$V2[grep("mean\\(\\)|std\\(\\)", features$V2)]
selected_names <- c(as.character(sel_feat))
merged_data <- merged_data[, selected_names]
merged_data <- cbind(merged_data, y_data, s_data)


#Step 03: Giving descriptive names to 'Activity'
merged_data$Activity <- factor(merged_data$Activity, labels = activities$V2)

#Step 04: Appropriately labels the data set with descriptive variable names
names(merged_data)<- gsub("^t", "time", names(merged_data))
names(merged_data)<- gsub("^f", "frequency", names(merged_data))
names(merged_data)<- gsub("Acc", "Accelerometer", names(merged_data))
names(merged_data)<- gsub("Gyro", "Gyroscope", names(merged_data))
names(merged_data)<- gsub("Mag", "Magnitude", names(merged_data))
names(merged_data)<- gsub("BodyBody", "Body", names(merged_data))
#Let's take a look and check
names(merged_data)
View(merged_data)


#Step 05:From the data set in step 4, 
#creates a second, independent tidy data set 
#with the average of each variable for each activity 
#and each subject.

final_data <- aggregate(. ~Subject + Activity, merged_data, mean)
final_data <- final_data[order(final_data$Subject, final_data$Activity),]
write.table(final_data, file= "tidydata.txt", row.name = FALSE)