#Making Correlation Plot a Generalized Function --------------------------------------------------------------------------------------
library(corrplot)

Corr_Plot <- function(data){
  
  Corr_Input_Default <- data #Start as a Data Frame of Matrix Object
  
  if (class(data) == "data.frame"){
    
    M <- cor(as.matrix(Corr_Input_Default))
    head(round(M,2))
    Corr_Plot <- corrplot(M,type = "lower",method = "circle",tl.col = "black")
    
  }
  
  else if(class(data) == "matrix"){
    
    M <- cor(Corr_Input_Default)
    head(round(M,2))
    Corr_Plot <- corrplot(M,type = "lower",method = "circle",tl.col = "black")           
    
  }
  else{
    
    Corr_Plot <- "Missing Correctly Formatted Data"
    
  }
  
  return(Corr_Plot)     
  
}

#Testing The Output of The Correlation Matirx Function

A <- cbind(rnorm(1000),rnorm(1000))
A_1 <- cbind(A,5*A[,1]^(3))
jpeg(filename = "rplot.jpg",width = 400, height =350)
Corr_Plot(A_1)
dev.off()


