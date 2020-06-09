library(tidyverse)

penguins <- read_csv("https://raw.githubusercontent.com/allisonhorst/penguins/master/data/penguins_size.csv")

# manual color -----------------------------------------------------------------

ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(aes(color = species, shape = species), size = 3, alpha = 0.8) +
  theme_minimal() +
  scale_color_manual(values = c("#5C7144","#FF9375", "#80CA65")) +
  labs(title = "Penguin size, Palmer Station LTER",
       subtitle = "Flipper length and body mass for Adelie, Chinstrap and Gentoo Penguins",
       x = "Flipper length (mm)",
       y = "Body mass (g)",
       color = "Penguin species",
       shape = "Penguin species")

# thematic ---------------------------------------------------------------------

library(thematic)

thematic_on(bg = "#FFFFFF", fg = "#5C7144", accent = "#80CA65")

ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(aes(color = species, shape = species), size = 3, alpha = 0.8) +
  labs(title = "Penguin size, Palmer Station LTER",
       subtitle = "Flipper length and body mass for Adelie, Chinstrap and Gentoo Penguins",
       x = "Flipper length (mm)",
       y = "Body mass (g)",
       color = "Penguin species",
       shape = "Penguin species")

