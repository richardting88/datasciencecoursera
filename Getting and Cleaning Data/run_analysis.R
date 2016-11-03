rm(list=ls())

setwd("C:\\Users\\Richard\\Desktop\\Coursera\\Course - Data Cleaning\\Project\\UCI HAR Dataset")

#I have already downloaded and unziped the data files

#Loading training datasets
x_train = read.table("./train/X_train.txt", header=FALSE)
head(x_train)

y_train = read.table("./train/y_train.txt", header=FALSE)
head(y_train)

subj_train = read.table("./train/subject_train.txt", header=FALSE)
head(subj_train)

#Loading testing datasets
x_test = read.table("./test/X_test.txt", header=FALSE)
head(x_test)

y_test = read.table("./test/y_test.txt", header=FALSE)
head(y_test)

subj_test = read.table("./test/subject_test.txt", header=FALSE)
head(subj_test)

#Loading feature dataset
feature=read.table("./features.txt", header=FALSE)
head(feature)

#Loading activity label
acty_label=read.table("./activity_labels.txt", header=FALSE)
names(acty_label)<-c("Activity","Activity_desc")
head(acty_label)


#select mean and standard deviation for each measurement
mean_or_std=grep("mean|std",feature[,2],ignore.case=TRUE)
sub_x_train = x_train[mean_or_std]
sub_x_test = x_test[mean_or_std]

#add activity and subject to training and test sets
train_master = cbind(y_train, subj_train, sub_x_train)
test_master = cbind(y_test, subj_test, sub_x_test)

#Merges the training and the test sets to create one data set.
ds_combined  = rbind(train_master, test_master)
names(ds_combined) = c("Activity", "Subject", as.character(feature[mean_or_std,2]))
head(ds_combined)

#Replace numeric values in variable "Activity" with descriptive names
ds_combined=merge(ds_combined, acty_label, by="Activity")
ds_combined=ds_combined[,-1]
head(ds_combined)

#Appropriately labels the data set with descriptive variable names.
names(ds_combined)

names(ds_combined)=gsub("-std","STD",names(ds_combined), ignore.case=TRUE)
names(ds_combined)=gsub("-mean","Mean",names(ds_combined), ignore.case=TRUE)
names(ds_combined)=gsub("^t","Time",names(ds_combined))
names(ds_combined)=gsub("^f","Frequency",names(ds_combined))
names(ds_combined)=gsub("angle\\(t","angle\\(Time",names(ds_combined))

#Creates an independent tidy data set with the average of each variable for each activity and each subject.

ds_combined$Subject = as.factor(ds_combined$Subject)
final_ds = aggregate( .~ Subject + Activity_desc, ds_combined, FUN=mean)
final_ds = final_ds[order(final_ds$Subject, final_ds$Activity_desc), ]
head(final_ds)
write.table(final_ds, "./tidy_ds.txt", row.names=FALSE, sep="\t")




