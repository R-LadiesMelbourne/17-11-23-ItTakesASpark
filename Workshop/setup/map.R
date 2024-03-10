map <- load(url("https://raw.githubusercontent.com/shaziaruybal/2022-05-04-It-takes-a-spark/master/data/Map.rda"))
map_data <- read_csv("map_data.csv") %>% janitor::clean_names()
