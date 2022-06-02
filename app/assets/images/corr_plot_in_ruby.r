# This function will output a scatter plot with a LSR line superimposed on the plot
# Trenton Will be highlighted
# An Rsquared value will be displayed above the plot

# In order to get this to run in ruby some tweaks need to be made
# The input will be in the form of a matirx or three individual vectors 
# Uncomment the following line to properly format the data:


# R generated code to test the plot without Ruby ------------

#  townNames <- (seq(1,10,by = 1))
#  xData <- (5*rchisq(10,10))
#  yData <- (xData*rgamma(10, shape = 2))
#  labelX <- "One"
#  labelY <- "Two"
 
#  ----------------------------------------------------------
library(Cairo)



A_1 <- data.frame(xData,yData,townNames)



Base_Scatter_Plot <- function(Data,Var1,Var2,Name1,Name2){


Input_Vis <- A_1


A <- lm(Var2~Var1,Input_Vis) #Linear Regression, predicting x from y


B <- summary(A) #Linear Regression Summary that contains Rsquared Value


Rsquared <- as.character(round(B[["r.squared"]],4)) #Isolating Rsquare from B
Rsq_Text <- "Rsquared Value: " #Assigning output text in plot



plot(Var1,Var2,xlab = Name1,ylab = Name2,col = "navy",pch = 19)
lines(x = Var1, y = A[[1]][2]*Var1+A[[1]][1], col = "red")
title(main = paste(Rsq_Text, Rsquared))
text(Var1 ,Var2, labels=townNames, cex=0.7, font=2,pos=2)



}

# generate cairo image
Cairo(file = img_path, width = 640, height = 640, type="jpg", pointsize=12, 
      bg = "transparent", canvas = "white", units = "px", dpi = "auto") #Initializing the PNG output 

Base_Scatter_Plot(A_1,xData,yData,labelX,labelY)


dev.off()


#