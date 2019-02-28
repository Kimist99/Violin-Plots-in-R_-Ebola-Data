#violin plots in R
install.packages("plotly")
library(plotly)
packageVersion('plotly')

install.packages("magrittr") 
install.packages("dplyr")    
library(magrittr) 
library(dplyr)
update.packages("ggplot2")

data2 <- read.csv(file.choose(), header=T) #EbolaOrig
data2

df <- data2
df

#Discharge Type by Age
p <- df %>%
  plot_ly(
    x = ~DischType,
    y = ~Age,
    split = ~DischType,
    type = 'violin',
    box = list(
      visible = T
    ),
    meanline = list(
      visible = T
    )
  ) %>% 
  layout(
    xaxis = list(
      title = "Ebola Infection Outcomes Dec2018"
    ),
    yaxis = list(
      title = "Age",
      zeroline = F
    )
  )
p

