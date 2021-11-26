# Challenge 1: 

#Find data with two related variables and save into text file and load data
V_vs_T<-read.csv("Lab_4.2 copy.csv", header = TRUE, stringsAsFactors = FALSE)

#Produce scatter plot with trendline

library(ggplot2)

ggplot(data=V_vs_T, 
       aes(x = X_Axis, y = Time)) +
  geom_point() +
  xlab("ln(V/Vo)") +
  ylab("Time (s)") +
  stat_smooth(method="lm") +
  theme_classic()

