pickGameNightGames <- function(df, n_players, max_minutes) {
  df |>
    dplyr::filter(minplayers <= n_players, maxplayers >= n_players,
           playingtime <= max_minutes) |>
    dplyr::arrange(playingtime)
}

# In the real data - look at minplayer, playingtime column

# Could generate test on this without any changes
# Returns when n_players and max_minutes is exclusive
# Things are sorted correctly
# Returns x when nothing fits
# Returns errors

# if (!is.numeric(n_players) || length(n_players) != 1 || n_players < 1)
#   stop("`n_players` must be a single number of at least 1.", call. = FALSE)
# if (!is.numeric(max_minutes) || length(max_minutes) != 1 || max_minutes <= 0)
#   stop("`max_minutes` must be a single positive number.", call. = FALSE)
# playingtime > 0,

