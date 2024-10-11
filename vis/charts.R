library(tidyverse)
library(modeldata)

summary(crickets)


# Basic scatter plot
ggplot(crickets, aes(x = temp,
                     y = rate,
                     colour = species)) +
  geom_point() +
  labs(x = "Temperature",
       y = "Chirp Rate",
       color = "Species",
       title = "Cricket Chirps",
       caption = "Source: McDonald (2009)") +
  scale_color_brewer(palette = "Dark2")


# Properties of the geom
ggplot(crickets, aes(x = temp,
                     y = rate)) +
  geom_point(color = "Red",
             size = 2,
             alpha = .3,
             shape = "square") +
  labs(x = "Temperature",
       y = "Chirp Rate",
       title = "Cricket Chirps",
       caption = "Source: McDonald (2009)") +
  scale_color_brewer(palette = "Dark2")

# Adding another layer
ggplot(crickets, aes(x = temp,
                     y = rate)) +
  geom_point() +
  geom_smooth(method="lm",
              se = F) +   # remove standard error
  labs(x = "Temperature",
       y = "Chirp Rate",
       title = "Cricket Chirps",
       caption = "Source: McDonald (2009)") +
  scale_color_brewer(palette = "Dark2")


ggplot(crickets, aes(x = temp,
                     y = rate,
                     color = species)) +
  geom_point() +
  geom_smooth(method="lm",
              se = F) +   # remove standard error
  labs(x = "Temperature",
       y = "Chirp Rate",
       title = "Cricket Chirps",
       color = "Species",
       caption = "Source: McDonald (2009)") +
  scale_color_brewer(palette = "Dark2")

# Other plots

ggplot(crickets, aes(x = rate)) +
  geom_histogram(bins = 15) # one quantitative variable

ggplot(crickets, aes(x = rate)) +
  geom_freqpoly(bins = 15) # one quantitative variable

ggplot(crickets, aes(x = rate)) +
  geom_histogram(bins = 15) +
  geom_freqpoly(bins = 15) 

ggplot(crickets, aes(x = species)) +
  geom_bar(color = "black", 
           fill="lightblue")

ggplot(crickets, aes(x = species,
                     fill = species)) +
  geom_bar(show.legend = F) +
  scale_fill_brewer(palette = "Dark2")

# One quantitaive + one categorical

ggplot(crickets, aes(x=species,
                     y=rate,
                     color = species)) +
  geom_boxplot(show.legend = F) +
  scale_color_brewer(palette = "Dark2")

ggplot(crickets, aes(x=species,
                     y=rate,
                     color = species)) +
  geom_violin(show.legend = F) +
  scale_fill_brewer(palette = "Dark2")

ggplot(crickets, aes(x=species,
                     y=rate,
                     color = species)) +
  geom_col(show.legend = F) +
  scale_fill_brewer(palette = "Dark2")


ggplot(crickets, aes(x=species,
                     y=rate,
                     color = species)) +
  geom_boxplot(show.legend = F) +
  scale_color_brewer(palette = "Dark2") +
  theme_minimal()

# faceting

# bad
ggplot(crickets, aes(x= rate, fill = species)) +
  geom_histogram(bins = 15) +
  scale_fill_brewer(palette = "Dark2")

ggplot(crickets, aes(x= rate, fill=species)) +
  geom_histogram(bins = 15, show.legend = F) +
  facet_wrap(~species) +
  scale_fill_brewer(palette = "Dark2") +
  theme_minimal()

ggplot(crickets, aes(x= rate, fill=species)) +
  geom_histogram(bins = 15, show.legend = F) +
  facet_wrap(~species, ncol = 1) +
  scale_fill_brewer(palette = "Dark2") +
  theme_minimal()




