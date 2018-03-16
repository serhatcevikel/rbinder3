
# Read flights14.csv into "flights" data frame

flights <- read.csv("./flights14.csv")

# Check the head of the flights data frame

head(flights)

# create a scatter plot against distances in x axis and distances / air_time (the speed) in y axis
# 
# the main title should be "distance vs. speed"
# titles of x,y labs should be "distance km" and "speed (km/min)"
# 
# for rows where dep_time < 1200 (morning) the color should be red, else green
# 

par(mar = rep(4,4))
par(mfrow = c(3,3))

plot(x = flights$distance,
     y = flights$distance / flights$air_time,
     main = "distance vs. speed",
     xlab = "distance (km)",
     ylab = "speed (km/min)",
     col = ifelse(flights$dep_time < 1200, "red", "green")
    )

