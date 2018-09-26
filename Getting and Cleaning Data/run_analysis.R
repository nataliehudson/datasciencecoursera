# Set working directory
  
  setwd("C:/Users/Natalie/Dropbox (Personal)/Data Science Coursera/Getting and Cleaning Data/Project/")

  
# Read data into R
  
  features <- read.table("UCI HAR Dataset/features.txt", sep = " ")

  subject.train <- read.table("UCI HAR Dataset/train/subject_train.txt")
  x.train <- read.table("UCI HAR Dataset/train/X_train.txt",
                        col.names = features[,2])
  y.train <- read.table("UCI HAR Dataset/train/y_train.txt")

  subject.test <- read.table("UCI HAR Dataset/test/subject_test.txt")
  x.test <- read.table("UCI HAR Dataset/test/X_test.txt",
                       col.names = features[,2])
  y.test <- read.table("UCI HAR Dataset/test/y_test.txt")

  
# Step 1: Combine the training and test data sets to create a single data set
  
  train <- cbind(subject.train, y.train, x.train)
  test <- cbind(subject.test, y.test, x.test)

  ttdata <- rbind(train, test)  
  names(ttdata)[1:2] <- c("subject", "activity")
  
  
# Step 2: From the combined data set, select only the columns that contain a calculated mean or standard deviation
  
  library(dplyr)
  
  selcols <- append(c(1, 2), grep("mean\\.\\.|std\\.\\.", names(ttdata)))
  ttdata <- select(ttdata, selcols)  
  
  
# Step 3: Replace the activity numbers with descriptive activity names
  
  actkey <- read.table("UCI HAR Dataset/activity_labels.txt")
  ttdata <- mutate(ttdata, activity = actkey[activity,2])
  
  
# Step 4: Label the data set with descriptive variable names
  
  # The variable names provided in features.txt in the
  # original data set (e.g., "tBodyAcc-mean()-X") are
  # already descriptive. I could expand them to full phrases
  # ("meanBodyAccelerationAlongTheXAxisInTheTimeDomain), but
  # that would be more cumbersome and not any more
  # descriptive.
  #
  # I'm choosing to keep the abbreviations from the original
  # features.txt list. I've listed the expansion of each
  # abbreviation in Codebook.md.
  #
  # The process of reading in the column names converted all
  # of the punctuation marks to periods, which sometimes
  # results in multiple consecutive periods
  # ("tBodyAcc.mean...X"). I'll remove the repeated periods.
  # I'll also remove periods at the end of column names.
  
  names(ttdata) <- gsub("\\.\\.+", "\\.", names(ttdata))
  names(ttdata) <- gsub("\\.$", "", names(ttdata))
  

# Step 5: From this data set, create a second, independent tidy data set with the average of each variable for each activity and each subject.
  
  averages <- ttdata %>%
    group_by(activity, subject) %>%
    summarize_all(mean)
  
  names(averages)[-(1:2)] <- paste0("avg.", names(averages)[-(1:2)])
  