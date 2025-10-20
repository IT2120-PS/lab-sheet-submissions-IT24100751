setwd("C:/Users/YourName/Desktop/IT24100751")
data <- read.csv("Data.csv")
observed <- data$Count
names(observed) <- data$Snack
test <- chisq.test(observed, p = rep(1/4, 4))
cat("H0: All snack types are chosen with equal probability.\n")
cat("H1: Snack types are not chosen with equal probability.\n\n")
print(test)
if (test$p.value < 0.05) {
  cat("Conclusion: Reject H0 — snack types are not equally chosen.\n")
} else {
  cat("Conclusion: Fail to reject H0 — snack types are chosen equally.\n")
}