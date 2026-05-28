library(tidyverse)
d <- read_csv('data/gapminder.csv')

 # Plot : create a plot based on 2007 numbers with GDP per capita (gdpPercap) on x axis and Life 
# Expectancy (lifeExp) on y-axis. Use log-scale on x-axis
d_2007 <- filter(d, year == "2007")

ggplot(data = d_2007, aes(x = gdpPercap, y = lifeExp)) + 
         geom_point()
         
ggsave("figs/lifeExp_vs_gdpPercap_2007.pdf")

?ggsave
