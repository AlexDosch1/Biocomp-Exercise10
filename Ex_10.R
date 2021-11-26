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
obs <- read.table("data.txt", header = TRUE, stringsAsFactors = FALSE)

  #call ggplot and cowplot 
library(ggplot2)
library(cowplot)

# show barplot of means of four populations, store as plot1
  # Calculate means for each region
mean_north <- 0
for (i in obs) {
  if (obs[i] == "north") {
    append(mean_north, obs$X..observations.)
  }
}
plot1 <- ggplot(obs, aes(x = region, y = mean(obs$observations))) +
  geom_bar() +
  theme_bw() +
  xlab("Mean Observations") +
  theme(axis.text.x = element_text(angle=65, vjust=0.6))

# show scatterplot of all the observations, store as plot2
plot2 <- ggplot(data = obs,
                aes(x = region, y = X..observations.)) +
  geom_jitter() +
  xlab("Region") +
  ylab("Observations") +
  theme_classic()
  
# put sublots together in a variable "Fig1"
Fig1 <- plot_grid(plot1, plot2,
                  labels = c("a", "b"),
                  rel_widths - c(1, 1),
                  ncol = 2,
                  nrow = 1)

# Do the bar and scatter plots tell you different stories? Why? 
