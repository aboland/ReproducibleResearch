library(ggplot2)
library(scales)
library(dplyr)


cran_code <- 
  readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-11-12/loc_cran_packages.csv")

cran_code %>%
  group_by(language) %>%  # group by langauge
  summarise(lang_count = n(),  # calc number of packages by language
            lang_lines = sum(code)  # calc number of lines of code by language
  ) -> cran_language_summary

cran_language_summary %>%
  top_n(15, lang_count) %>%  # filter by top 15
  ggplot(aes(x = reorder(language, lang_count, decreasing = T) , y = lang_count)) +
  geom_histogram(stat = "identity", fill = "steelblue") +
  scale_y_continuous(labels = comma) +  # display large numbers with a comma
  coord_flip() +  # flip plot to see language names better
  labs(title = paste0("Top ", 15," Languages on CRAN (by number of packages)"), y = "Number of Packages", x = "")

