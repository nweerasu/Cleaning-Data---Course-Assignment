# load dependencies
library(dplyr)

# url for data
url <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

# download if the file doesn't already exist
message("downloading UCI dataset")
if(!file.exists("UCI_dataset.zip")){download.file(url, destfile = "UCI_dataset.zip", method = "curl")}

# unzip
message("unzipping UCI dataset")
if(!dir.exists("./UCI HAR Dataset/")){unzip("UCI_dataset.zip")}

# load datasets and training labels
message("tidying the dataset")
xtest <- read.table("UCI HAR Dataset/test/X_test.txt", sep = "")
xtrain <- read.table("UCI HAR Dataset/train/X_train.txt", sep = "")
ytrain <- read.table("UCI HAR Dataset/train/y_train.txt", sep = "")
ytest <- read.table("UCI HAR Dataset/test/y_test.txt", sep = "")
labels <- read.table("UCI HAR Dataset/features.txt", sep="", row.names = 1)
train_subj <- read.table("UCI HAR Dataset/train/subject_train.txt")
test_subj <- read.table("UCI HAR Dataset/test/subject_test.txt")
aclab <- read.table("UCI HAR Dataset/activity_labels.txt") # load activity labels

#add activity labels to training labels dataset
ytrain$V1 <- as.factor(ytrain$V1)
levels(ytrain$V1) <- aclab$V2

ytest$V1 <- as.factor(ytest$V1)
levels(ytest$V1) <- aclab$V2

# Simplify and combine training labels for train and test
names(xtrain) <- labels$V2; names(xtest) <- labels$V2

# pull mean and sd columns
cols <- grep("mean\\(\\)|std\\(\\)", names(xtrain))
xtrain <- xtrain[, cols]; xtest <- xtest[, cols]

# combine x and y train and tests by column
train <- cbind(train_subj, ytrain, xtrain); test <- cbind(test_subj, ytest, xtest)

# combine train and test
data <- rbind(train, test)

# simplify column names
names(data) <- tolower(names(data))
names(data) <- sub("^t", "time", names(data))
names(data) <- sub("^f", "fft", names(data))
names(data) <- sub("\\(\\)", "", names(data))
names(data) <- sub("-", "", names(data))
names(data)[1] <- "subject"
names(data)[2] <- "test"

message("creating averaged dataset")
# split apply command
tidytab <- data %>% 
  group_by(subject, test) %>%
  summarize_all(.fun = mean, .vars = as.numeric(3:68)) %>%
  print
  
write.table(tidytab, "tidy_UCI_HAR.txt", row.names = F)
