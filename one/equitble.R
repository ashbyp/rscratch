library(tidyverse)

data()
View(mpg)
?mean
glimpse(mpg)
head(mpg)
summary(mpg)

mpg_efficient <- filter(mpg, cty >= 20)
View(mpg_efficient)
mpg_ford <- filter(mpg, manufacturer == "ford")
View(mpg_ford)

mpg_metric <- mutate(mpg, cty_metric = cty * 0.425144)
View(mpg_metric)

mpg_metric <- mpg %>%
  mutate(cty_metric = cty * 0.425144) %>% 
  filter(manufacturer == "ford")

mpg %>% 
  group_by(class) %>% 
  summarise(mean(cty), 
            median(cty))

ggplot(mpg, aes(x = cty)) +
  geom_histogram() +
  labs(x = "City Mileage")

ggplot(mpg, aes(x = cty)) +
  geom_freqpoly() +
  labs(x = "City Mileage")

ggplot(mpg, aes(x = cty)) +
  geom_histogram() +
  geom_freqpoly() +
  labs(x = "City Mileage")


ggplot(mpg, aes(x = cty, y = hwy)) +
  geom_point()

ggplot(mpg, aes(x = cty, y = hwy)) +
  geom_point() + geom_smooth(method=lm)

ggplot(mpg, aes(x = cty, y = hwy, color = class)) +
  geom_point() +  scale_color_brewer(palette = "Dark2")









         