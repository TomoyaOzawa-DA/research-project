if (!require("bcp")) install.packages("bcp")
library(bcp)
if (!require("mvtnorm")) install.packages("mvtnorm")
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

if (!require("foreach")) install.packages("foreach")
library(foreach)

# rho:0.3
# SNR: 3.52
if (!require("doParallel")) install.packages("doParallel")
library(doParallel)

cores <- detectCores()
cl <- makeCluster(cores)
registerDoParallel(cl)

result_rho_03_SNR_352 <- foreach(
  i = 1:500,
  .packages=c("mvtnorm", "bcp")
  #.combine = 'c'
) %dopar% {
  simulation_five_variates_bayes(n = 1000, SNR = 3.52, rho = 0.3)
}

stopCluster(cl)

# save
saveRDS(result_rho_03_SNR_352, "result_bayes_rho_03_SNR_352.rds")


# rho:0.3
# SNR: 6

cores <- detectCores()
cl <- makeCluster(cores)
registerDoParallel(cl)

result_rho_03_SNR_6 <- foreach(
  i = 1:500,
  .packages=c("mvtnorm", "bcp")
  #.combine = 'c'
) %dopar% {
  simulation_five_variates_bayes(n = 1000, SNR = 6, rho = 0.3)
}

stopCluster(cl)

# save
saveRDS(result_rho_03_SNR_6, "result_bayes_rho_03_SNR_6.rds")





