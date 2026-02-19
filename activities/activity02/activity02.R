set.seed(22)
activity_data <- data.frame(
  StudyHours = rnorm(60, mean = 6, sd = 2),
  Attendance = rnorm(60, mean = 85, sd = 8),
  Score = rnorm(60, mean = 78, sd = 7),
  Gender = sample(c("Male", "Female"), 120, replace = TRUE),
  Group = sample(c("Group 1", "Group 2", "Group 3"), 120, replace = TRUE)
)

activity_data$Gender <- factor(activity_data$Gender)
activity_data$Group  <- factor(activity_data$Group)

summary(activity_data)
sapply(activity_data[c("StudyHours","Attendance","Score")], sd)
sapply(activity_data[c("StudyHours","Attendance","Score")], range)

str(activity_data)

mean(activity_data$Score > 85)

hist(activity_data$Score, main="Histogram of Score", xlab="Score")

mean(activity_data$Score)
var(activity_data$Score)

cor(activity_data[c("StudyHours","Attendance","Score")])

oneway.test(Score ~ Group, data = activity_data)

tab <- table(activity_data$Gender, activity_data$Group)
tab
chisq.test(tab)

