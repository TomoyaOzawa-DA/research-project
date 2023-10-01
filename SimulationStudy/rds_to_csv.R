

# make output to csv
output <- readRDS("result_bayes_rho_03_SNR_122.rds")

# change point is 501
# the locations of change points with the top5 highest posterior probaility.
columns <- c("rho", "SNR", "n", "cp1", "cp2", "cp3", "cp4", "cp5", "cp6")
df_top5 <- data.frame(matrix(nrow = 500, ncol = length(columns)))
colnames(df_top5) <- columns
df_top5$rho <- 0.3
df_top5$SNR <-1.22
df_top5$n <-1000

for (i in 1:500){
  df_top5[i, 4:9] <- output[[i]]$cps
}

write.csv(df_top5, "SimulationStudy/results/result_bayes_rho_03_SNR_122.csv", row.names = FALSE)




# make output to csv
output <- readRDS("SimulationStudy/results/result_bayes_rho_03_SNR_071_20230501.rds")

# change point is 501
# the locations of change points with the top5 highest posterior probaility.
columns <- c("rho", "SNR", "n", "cp1", "cp2", "cp3", "cp4", "cp5", "cp6")
df_top5 <- data.frame(matrix(nrow = 500, ncol = length(columns)))
colnames(df_top5) <- columns
df_top5$rho <- 0.3
df_top5$SNR <-0.71
df_top5$n <-1000

for (i in 1:500){
  df_top5[i, 4:9] <- output[[i]]$cps
}

write.csv(df_top5, "SimulationStudy/results/result_bayes_rho_03_SNR_071_20230501.csv", row.names = FALSE)


# START

# make output to csv
output <- readRDS("SimulationStudy/results/result_bayes_rho_03_SNR_207_20230504.rds")

# change point is 501
# the locations of change points with the top5 highest posterior probaility.
columns <- c("rho", "SNR", "n", "cp1", "cp2", "cp3", "cp4", "cp5", "cp6")
df_top5 <- data.frame(matrix(nrow = 500, ncol = length(columns)))
colnames(df_top5) <- columns
df_top5$rho <- 0.3
df_top5$SNR <- 2.07
df_top5$n <-1000

for (i in 1:500){
  df_top5[i, 4:9] <- output[[i]]$cps
}

write.csv(df_top5, "SimulationStudy/results/result_bayes_rho_03_SNR_207_20230504.csv", row.names = FALSE)



# make output to csv
output <- readRDS("SimulationStudy/results/result_bayes_rho_03_SNR_352_20230509.rds")

# change point is 501
# the locations of change points with the top5 highest posterior probaility.
columns <- c("rho", "SNR", "n", "cp1", "cp2", "cp3", "cp4", "cp5", "cp6")
df_top5 <- data.frame(matrix(nrow = 500, ncol = length(columns)))
colnames(df_top5) <- columns
df_top5$rho <- 0.3
df_top5$SNR <- 3.52
df_top5$n <-1000

for (i in 1:500){
  df_top5[i, 4:9] <- output[[i]]$cps
}

write.csv(df_top5, "SimulationStudy/results/result_bayes_rho_03_SNR_352_20230509.csv", row.names = FALSE)



# make output to csv
output <- readRDS("SimulationStudy/results/result_bayes_rho_03_SNR_6_20230511.rds")

# change point is 501
# the locations of change points with the top5 highest posterior probaility.
columns <- c("rho", "SNR", "n", "cp1", "cp2", "cp3", "cp4", "cp5", "cp6")
df_top5 <- data.frame(matrix(nrow = 500, ncol = length(columns)))
colnames(df_top5) <- columns
df_top5$rho <- 0.3
df_top5$SNR <- 6.0
df_top5$n <-1000

for (i in 1:500){
  df_top5[i, 4:9] <- output[[i]]$cps
}

write.csv(df_top5, "SimulationStudy/results/result_bayes_rho_03_SNR_6_20230511.csv", row.names = FALSE)



# make output to csv
output <- readRDS("SimulationStudy/results/result_bayes_rho_0_SNR_071_20230506.rds")

# change point is 501
# the locations of change points with the top5 highest posterior probaility.
columns <- c("rho", "SNR", "n", "cp1", "cp2", "cp3", "cp4", "cp5", "cp6")
df_top5 <- data.frame(matrix(nrow = 500, ncol = length(columns)))
colnames(df_top5) <- columns
df_top5$rho <- 0
df_top5$SNR <- 0.71
df_top5$n <-1000

for (i in 1:500){
  df_top5[i, 4:9] <- output[[i]]$cps
}

write.csv(df_top5, "SimulationStudy/results/result_bayes_rho_0_SNR_071_20230506.csv", row.names = FALSE)



# make output to csv
output <- readRDS("SimulationStudy/results/result_bayes_rho_0_SNR_122_20230510.rds")

# change point is 501
# the locations of change points with the top5 highest posterior probaility.
columns <- c("rho", "SNR", "n", "cp1", "cp2", "cp3", "cp4", "cp5", "cp6")
df_top5 <- data.frame(matrix(nrow = 500, ncol = length(columns)))
colnames(df_top5) <- columns
df_top5$rho <- 0
df_top5$SNR <- 1.22
df_top5$n <-1000

for (i in 1:500){
  df_top5[i, 4:9] <- output[[i]]$cps
}

write.csv(df_top5, "SimulationStudy/results/result_bayes_rho_0_SNR_122_20230510.csv", row.names = FALSE)


# make output to csv
output <- readRDS("SimulationStudy/results/result_bayes_rho_0_SNR_207_20230516.rds")

# change point is 501
# the locations of change points with the top5 highest posterior probaility.
columns <- c("rho", "SNR", "n", "cp1", "cp2", "cp3", "cp4", "cp5", "cp6")
df_top5 <- data.frame(matrix(nrow = 500, ncol = length(columns)))
colnames(df_top5) <- columns
df_top5$rho <- 0
df_top5$SNR <- 2.07
df_top5$n <-1000

for (i in 1:500){
  df_top5[i, 4:9] <- output[[i]]$cps
}

write.csv(df_top5, "SimulationStudy/results/result_bayes_rho_0_SNR_207_20230516.csv", row.names = FALSE)



# make output to csv
output <- readRDS("SimulationStudy/results/result_bayes_rho_0_SNR_352_20230516.rds")

# change point is 501
# the locations of change points with the top5 highest posterior probaility.
columns <- c("rho", "SNR", "n", "cp1", "cp2", "cp3", "cp4", "cp5", "cp6")
df_top5 <- data.frame(matrix(nrow = 500, ncol = length(columns)))
colnames(df_top5) <- columns
df_top5$rho <- 0
df_top5$SNR <- 3.52
df_top5$n <-1000

for (i in 1:500){
  df_top5[i, 4:9] <- output[[i]]$cps
}

write.csv(df_top5, "SimulationStudy/results/result_bayes_rho_0_SNR_352_20230516.csv", row.names = FALSE)


# make output to csv
output <- readRDS("SimulationStudy/results/result_bayes_rho_0_SNR_6_20230519.rds")

# change point is 501
# the locations of change points with the top5 highest posterior probaility.
columns <- c("rho", "SNR", "n", "cp1", "cp2", "cp3", "cp4", "cp5", "cp6")
df_top5 <- data.frame(matrix(nrow = 500, ncol = length(columns)))
colnames(df_top5) <- columns
df_top5$rho <- 0
df_top5$SNR <- 6.0
df_top5$n <-1000

for (i in 1:500){
  df_top5[i, 4:9] <- output[[i]]$cps
}

write.csv(df_top5, "SimulationStudy/results/result_bayes_rho_0_SNR_6_20230519.csv", row.names = FALSE)





# make output to csv
output <- readRDS("SimulationStudy/results/result_bayes_rho_07_SNR_071_20230511.rds")

# change point is 501
# the locations of change points with the top5 highest posterior probaility.
columns <- c("rho", "SNR", "n", "cp1", "cp2", "cp3", "cp4", "cp5", "cp6")
df_top5 <- data.frame(matrix(nrow = 500, ncol = length(columns)))
colnames(df_top5) <- columns
df_top5$rho <- 0.7
df_top5$SNR <- 0.71
df_top5$n <-1000

for (i in 1:500){
  df_top5[i, 4:9] <- output[[i]]$cps
}

write.csv(df_top5, "SimulationStudy/results/result_bayes_rho_07_SNR_071_20230511.csv", row.names = FALSE)




# make output to csv
output <- readRDS("SimulationStudy/results/result_bayes_rho_07_SNR_122_20230513.rds")

# change point is 501
# the locations of change points with the top5 highest posterior probaility.
columns <- c("rho", "SNR", "n", "cp1", "cp2", "cp3", "cp4", "cp5", "cp6")
df_top5 <- data.frame(matrix(nrow = 500, ncol = length(columns)))
colnames(df_top5) <- columns
df_top5$rho <- 0.7
df_top5$SNR <- 1.22
df_top5$n <-1000

for (i in 1:500){
  df_top5[i, 4:9] <- output[[i]]$cps
}

write.csv(df_top5, "SimulationStudy/results/result_bayes_rho_07_SNR_122_20230513.csv", row.names = FALSE)



# make output to csv
output <- readRDS("SimulationStudy/results/result_bayes_rho_07_SNR_207_20230516.rds")

# change point is 501
# the locations of change points with the top5 highest posterior probaility.
columns <- c("rho", "SNR", "n", "cp1", "cp2", "cp3", "cp4", "cp5", "cp6")
df_top5 <- data.frame(matrix(nrow = 500, ncol = length(columns)))
colnames(df_top5) <- columns
df_top5$rho <- 0.7
df_top5$SNR <- 2.07
df_top5$n <-1000

for (i in 1:500){
  df_top5[i, 4:9] <- output[[i]]$cps
}

write.csv(df_top5, "SimulationStudy/results/result_bayes_rho_07_SNR_207_20230516.csv", row.names = FALSE)




# make output to csv
output <- readRDS("SimulationStudy/results/result_bayes_rho_07_SNR_352_20230519.rds")

# change point is 501
# the locations of change points with the top5 highest posterior probaility.
columns <- c("rho", "SNR", "n", "cp1", "cp2", "cp3", "cp4", "cp5", "cp6")
df_top5 <- data.frame(matrix(nrow = 500, ncol = length(columns)))
colnames(df_top5) <- columns
df_top5$rho <- 0.7
df_top5$SNR <- 3.52
df_top5$n <-1000

for (i in 1:500){
  df_top5[i, 4:9] <- output[[i]]$cps
}

write.csv(df_top5, "SimulationStudy/results/result_bayes_rho_07_SNR_352_20230519.csv", row.names = FALSE)



# make output to csv
output <- readRDS("SimulationStudy/results/result_bayes_rho_07_SNR_6_20230519.rds")

# change point is 501
# the locations of change points with the top5 highest posterior probaility.
columns <- c("rho", "SNR", "n", "cp1", "cp2", "cp3", "cp4", "cp5", "cp6")
df_top5 <- data.frame(matrix(nrow = 500, ncol = length(columns)))
colnames(df_top5) <- columns
df_top5$rho <- 0.7
df_top5$SNR <- 6.0
df_top5$n <-1000

for (i in 1:500){
  df_top5[i, 4:9] <- output[[i]]$cps
}

write.csv(df_top5, "SimulationStudy/results/result_bayes_rho_07_SNR_6_20230519.csv", row.names = FALSE)












