getwd()
library(tidyverse)
read_csv("data/winequality-red.csv") -> WineQuality
install.packages("janitor")
library(janitor)
WineQuality %>%
  janitor::clean_names() -> CleanWineQuality
#I'll first take a general look at the whole data's summary statistics.
summary(CleanWineQuality)

#Then I'll focus on the summary statistics of the wine quality.
summary(CleanWineQuality$quality)

# Then, I will graph it in histogram.
hist(CleanWineQuality$quality)
# as we can see from the graph, the most frequent wines quality score is 5 which is around the mean=5.636. In addition, both high and low quality wines seems rare in our data.


# I will use a plot graphs to visually see how variables properties and quality are distributed.
#The quality will be the dependent, and other variables will be independent.

ggplot(CleanWineQuality, aes(fixed_acidity, quality)) +
  geom_jitter(width = 0.2, shape = 16, alpha = 0.75) +

ggplot(CleanWineQuality, aes(volatile_acidity, quality)) +
  geom_jitter(width = 0.2, shape = 16, alpha = 0.75)
#visually, when the amount of volatile acidity was > 1.0, most -not all- of the quality score was below 6.

ggplot(CleanWineQuality, aes(citric_acid, quality)) +
  geom_jitter(width = 0.2, shape = 16, alpha = 0.75)

ggplot(CleanWineQuality, aes(residual_sugar, quality)) +
  geom_jitter(width = 0.2, shape = 16, alpha = 0.75)
#same here, when the amount of sugar was > 10, most of the quality score was around or blow 6 and never exceeded 7.

ggplot(CleanWineQuality, aes(chlorides, quality)) +
  geom_jitter(width = 0.2, shape = 16, alpha = 0.75)
#also here, when the amount of chlorides was >0.3, most of the quality score was around 6 and 2 only exceeded 7.

ggplot(CleanWineQuality, aes(total_sulfur_dioxide, quality)) +
  geom_jitter(width = 0.2, shape = 16, alpha = 0.75)

ggplot(CleanWineQuality, aes(density, quality)) +
  geom_jitter(width = 0.2, shape = 16, alpha = 0.75)

ggplot(CleanWineQuality, aes(p_h, quality)) +
  geom_jitter(width = 0.2, shape = 16, alpha = 0.75)

ggplot(CleanWineQuality, aes(sulphates, quality)) +
  geom_jitter(width = 0.2, shape = 16, alpha = 0.75)
#similarly here, when the amount of sulphates was >1.25, most of the quality score was below 6 and 2 only exceeded 7.

