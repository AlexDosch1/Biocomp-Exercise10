# Challenge 1: 

#Find data with two related variables and save into text file and load data

#my own data from physics lab plotting linearized voltage vs time data 
  #this was already in a csv format, to use a text file use command read.txt with same arguments
V_vs_T<-read.csv("Lab_4.2 copy.csv", header = TRUE, stringsAsFactors = FALSE)

#Produce scatter plot of data with a trend line

library(ggplot2)

ggplot(data=V_vs_T, 
       aes(x = X_Axis, y = Time)) +
  geom_point() +
  xlab("ln(V/Vo)") +
  ylab("Time (s)") +
  stat_smooth(method="lm") +
  theme_classic()




# Challenge 2 
# Use data.txt to generate two figures that summarize the data 
  # Load data.txt to be read by ggplot
obs <- read.table("data.txt", sep = ",", header = TRUE, stringsAsFactors = TRUE)

  #call ggplot and cowplot 
library(ggplot2)
library(cowplot)

# show barplot of means of four populations, store as plot1
  # Calculate means for each region
mean_north <- mean(obs[1:1000, 2])
mean_east <- mean(obs[1001:2000, 2])
mean_south <- mean(obs[2001:3000, 2])
mean_west <- mean(obs[3001:4000, 2])

mean_obs <- data.frame(region=c("north", "east", "south","west"),
           mean=c(mean_north, mean_east, mean_south, mean_west))

plot1 <- ggplot(data = mean_obs, aes(x = region, fill = as.factor(mean))) +
  geom_bar() +
  theme_bw() +
  xlab("Region") +
  ylab("Mean Observations")

# show scatterplot of all the observations, store as plot2
plot2 <- ggplot(data = obs,
                aes(x = region, y = observations)) +
  geom_jitter() +
  xlab("Region") +
  ylab("Observations") +
  theme_classic()
  
# put sublots together in a variable "Fig1"
plot_grid(plot1, plot2,
          labels = c("a", "b"),
          rel_widths = c(1, 1),
          ncol = 2,
          nrow = 1)

# Do the bar and scatter plots tell you different stories? Why? 
  # Normally scatter plots involve more incremental data, which differs from 
  # the categorical organization of bar plots. Scatter plots can be used for 
  # trend lines and relationship patterns while bar plots give visual 
  # descriptions of categorical trends or properties. In this case, they tell 
  # similar stories due to the categorical nature of the data, however the bar 
  # plot shows the exact mean of the data while the scatter plot shows the range 
  # of observations for each region, with the dark clusters indicating a vague
  # mean value rather than an exact one. 
