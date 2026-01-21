############################
### HW 3 Template        ###
### PPHA 31002: Stats I  ###
### Due November 17 2025 ###
############################


setwd("/Users/annakoh/Desktop/working directory/2025fall/HW3")
library(ggplot2)
library(dplyr)

SCEP_data <- read.csv("SCEP_data.csv")
str(SCEP_data)
head(SCEP_data)


ggplot(SCEP_data,
       aes(x = state_capacity_score,
           y = percent_of_protected_land_area)) +
  geom_point() +
  labs(
    x = "State capacity score (standard deviation units)",
    y = "Percent of land area under protection",
    title = "Relationship between state capacity and protected land area"
  ) +
  theme_minimal()


mod_protect <- lm(percent_of_protected_land_area ~ state_capacity_score,
                  data = SCEP_data)

ggplot(SCEP_data,
       aes(x = state_capacity_score,
           y = percent_of_protected_land_area)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(
    x = "State capacity score (standard deviation units)",
    y = "Percent of land area under protection",
    title = "Protected land vs. state capacity with regression line"
  ) +
  theme_minimal()


summary(mod_protect)


coef(mod_protect)            
round(coef(mod_protect), 3)



new_country <- data.frame(state_capacity_score = 3)


predict(mod_protect, newdata = new_country)


predict(mod_protect, newdata = new_country,
        interval = "confidence")   



SCEP_data$capacity_deciles <- ntile(SCEP_data$state_capacity_score, 10)
SCEP_data$capacity_deciles <- factor(SCEP_data$capacity_deciles)

mod_deciles <- lm(percent_of_protected_land_area ~ capacity_deciles,
                  data = SCEP_data)

summary(mod_deciles)



