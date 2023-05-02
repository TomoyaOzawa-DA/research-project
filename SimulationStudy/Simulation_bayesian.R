library(bcp)
library(mvtnorm)



# function
simulation_five_variates_bayes <- function(n, SNR, rho){
  # generate data
  beta1 <- matrix(c(1, 1, 1, 0 ,1), nrow = 5)
  beta2 <- matrix(c(-1, -1, -1, 0 , -1), nrow = 5)
  p <- length(beta1)
  Sigma <- matrix(rep(0, p^2), ncol = p)
  for (i in 1:p){
    for (j in 1:p){
      Sigma[i, j] <- rho^(abs(i-j))
    }
  }
  
  X <- rmvnorm(n, rep(0, p), Sigma)
  
  noise1 <- rnorm(n/2, 0, var(X[1:(n/2),]%*%beta1)/SNR)
  noise2 <- rnorm(n/2, 0, var(X[(n/2 + 1):n,]%*%beta2)/SNR)
  
  Y1<- X[1:(n/2),]%*%beta1 + noise1
  Y2<- X[(n/2 + 1): n,]%*%beta2 + noise2
  
  Y <- rbind(Y1, Y2)
  
  
  # implement BP model
  # p0 = 1: prior change point probability is U(0, 1), non-informative prior
  # nreg = 3: the minimum size of each segment.
  result_bcp <- bcp(y = Y, x = X, p0 = 1, nreg = 3)
  
  sol <- result_bcp$posterior.prob
  
  # Change points with the highest prior probability (top 5)
  cps <- head(order(sol, decreasing = TRUE))
  
  # their corresponding prior probability
  prob <- sol[cps]
  
  # result
  result <- list(cps = cps, 
                 prob = prob)
  
  return(result)
}


# test
# too long! 824.829 sec elapsed (p0 = 1)
# library(tictoc)
# tic()
# test <- simulation_five_variates_bayes(n = 1000, SNR = 1.22, rho = 0.3)
# toc()



# simulation

library(foreach)

# rho: [0, 0.3, 0.7]
# SNR: [6, 3.52, 2.07, 1.22, 0.71]

# rho:0.3
# SNR: 1.22
result_rho_03_SNR_122 <- foreach(
  i = 1:500#, 
  #.combine = 'c'
) %dopar% {
  simulation_five_variates_bayes(n = 1000, SNR = 1.22, rho = 0.3)
}


# spent 5 days...
saveRDS(result_rho_03_SNR_122, "result_bayes_rho_03_SNR_122.rds")


# rho:0.3
# SNR: 0.71

library(tictoc)
library(doParallel)

tic()
cores <- detectCores()
cl <- makeCluster(cores)
registerDoParallel(cl)

result_rho_03_SNR_071 <- foreach(
  i = 1:500,
  .packages=c("mvtnorm", "bcp")
  #.combine = 'c'
) %dopar% {
  simulation_five_variates_bayes(n = 1000, SNR = 0.71, rho = 0.3)
}

stopCluster(cl)
toc()

# 
saveRDS(result_rho_03_SNR_071, "result_bayes_rho_03_SNR_071.rds")




































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













