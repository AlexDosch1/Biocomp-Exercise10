# load functions in supportingFunctions.R, compile and process data, and answer
#questions with graphical evidence (Ansers are at the bottom!)

# source() to access supportingFunctions.R
source("supportingFunctions.R", local = TRUE)
# use functions to compile and process data
toCSV(Rproject2021)
oneCSV(countryX, countryY_csv)
seeData(allData.csv)

library(ggplot2)
library(cowplot)

# plots: 
# scatter plot with people infected by day
#make data.frame with people infected vs day of year?

Q1 <- ggplot(data = allData, 
             aes(x = dayofYear, y = ___)) +
  geom_point(color = as.factor(country)) +
  xlab("Day of Year") +
  ylab("Number of People Infected") +
  theme_classic()


plot1 <- ggplot(data = allData, aes( x = country, y=marker01)) +
  geom_col() +
  theme_bw() +
  xlab("Country") +
  ylab("Marker Present")
plot2 <- ggplot(data = allData, aes( x = country, y=marker02)) +
  geom_col() +
  theme_bw() +
  xlab("Country") +
  ylab("Marker Present")
plot3 <- ggplot(data = allData, aes( x = country, y=marker03)) +
  geom_col() +
  theme_bw() +
  xlab("Country") +
  ylab("Marker Present")
plot4 <- ggplot(data = allData, aes( x = country, y=marker04)) +
  geom_col() +
  theme_bw() +
  xlab("Country") +
  ylab("Marker Present")
plot5 <- ggplot(data = allData, aes( x = country, y=marker05)) +
  geom_col() +
  theme_bw() +
  xlab("Country") +
  ylab("Marker Present")
plot6 <- ggplot(data = allData, aes( x = country, y=marker06)) +
  geom_col() +
  theme_bw() +
  xlab("Country") +
  ylab("Marker Present")
plot7 <- ggplot(data = allData, aes( x = country, y=marker07)) +
  geom_col() +
  theme_bw() +
  xlab("Country") +
  ylab("Marker Present")
plot8 <- ggplot(data = allData, aes( x = country, y=marker08)) +
  geom_col() +
  theme_bw() +
  xlab("Country") +
  ylab("Marker Present")
plot9 <- ggplot(data = allData, aes( x = country, y=marker09)) +
  geom_col() +
  theme_bw() +
  xlab("Country") +
  ylab("Marker Present")
plot10 <- ggplot(data = allData, aes( x = country, y=marker10)) +
  geom_col() +
  theme_bw() +
  xlab("Country") +
  ylab("Marker Present")

Q2 <- plot_grid(plot1, plot2, plot3, plot4, plot5,
          labels = c("01", "02", "03", "04","05","06","07","08","09","10"),
          rel_widths = c(1, 1),
          ncol = 5,
          nrow = 2)



# Answers:
 # 1. The country with more markers present and thus more people infected most
      # likely had the disease first because it has had more time to progress 
      # and develop than the other country. This is visualized in the plot of 
      # people infected per day in each country (saved as Q1), showing that 
      # country X most likely had the disease first.
  # 2. Since the markers present vary widely between the two countries' data, it 
      # can be inferred that the disease has mutated too much for a vaccine in 
      # country Y to be effective in country X. This is visualized by Q1, which 
      # shows how many of each marker are present in each country. 