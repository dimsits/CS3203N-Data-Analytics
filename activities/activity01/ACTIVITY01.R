setwd("C:/Users/sethd/Documents/CS3203N/CS3203N-Data-Analytics/activities/activity01")


library(dplyr)

edata <- read.csv("employee_data.csv")

edata
head(edata)

colSums(is.na(edata))
edata %>% filter(is.na(Performance))

edata_sel <- edata %>% select(Name, Department, Salary)
edata_sel

edata_sel_base <- data.frame(
  Name = edata$Name,
  Department = edata$Department,
  Salary = edata$Salary
)
edata_sel_base

edata_high_salary <- edata %>% filter(Salary > 55000)
edata_high_salary

edata_senior <- edata %>% mutate(Seniority = YearsWorked > 5)
edata_senior

edata_sorted_perf <- edata %>% arrange(desc(Performance))
edata_sorted_perf

cat(
  "\nEmployees are sorted from highest to lowest Performance.\n",
  "Rows with missing Performance (NA) appear at the bottom.\n\n"
)

dept_avg_salary <- edata %>%
  group_by(Department) %>%
  summarise(MeanSalary = mean(Salary), .groups = "drop")
dept_avg_salary

aggregate(Salary ~ Department, data = edata, mean)

dept_counts <- edata %>%
  group_by(Department) %>%
  summarise(EmployeeCount = n(), .groups = "drop")
dept_counts

highest_avg_salary_dept <- dept_avg_salary %>% arrange(desc(MeanSalary)) %>% slice(1)
highest_avg_salary_dept

most_employees <- dept_counts %>% arrange(desc(EmployeeCount))
most_employees

max_mean_salary <- max(dept_avg_salary$MeanSalary)
dept_highest_salary <- dept_avg_salary %>% filter(MeanSalary == max_mean_salary)
dept_highest_salary

max_emp_count <- max(dept_counts$EmployeeCount)
dept_most_employees <- dept_counts %>% filter(EmployeeCount == max_emp_count)
dept_most_employees

