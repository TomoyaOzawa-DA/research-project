library(strucchange)
library(mvtnorm)



simulation_five_variates <- function(n, SNR, rho){
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
  
  result_Bai_Perron <- breakpoints(Y ~ -1 + X, breaks = 5, h = p+1)
  
  sol <- result_Bai_Perron$breakpoints
  
  return(sol)
}





library(foreach)


result_rho_03_SNR_122 <- foreach(
  i = 1:100#, 
  #.combine = 'c'
) %dopar% {
  simulation_five_variates(n = 1000, SNR = 1.22, rho = 0.3)
}

saveRDS(result_rho_03_SNR_122, "result_rho_03_SNR_122.rds")































