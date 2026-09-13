# Talk about BGG and how this data is obtained
# https://github.com/rfordatascience/tidytuesday/blob/main/data/2022/2022-01-25/readme.md

#load data
tuesdata <- tidytuesdayR::tt_load('2022-01-25')

game_ratings <- tuesdata$ratings
game_details <- tuesdata$details

arrow::write_parquet(game_ratings, "data-raw/game_ratings.parquet")
arrow::write_parquet(game_details, "data-raw/game_details.parquet")
