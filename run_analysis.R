if (!require("data.table")) {
  install.packages("data.table")
}
if (!require("reshape2")) {
  install.packages("reshape2")
}
require("data.table")
require("reshape2")
activity_labels <- read.table("./activity_labels.txt")[,2]
features <- read.table("./features.txt")[,2]
extract_features <- grepl("mean|std", features)
X_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/y_test.txt")
subject_test <- read.table("./test/subject_test.txt")
names(X_test) = features
X_test = X_test[,extract_features]



