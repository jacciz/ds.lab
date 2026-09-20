categorizeRatings <- function(rating){
  assertthat::assert_that(any(!is.null(rating), !is.na(rating), is.numeric(rating)), msg = "rating must not be NA, NULL and must be an integer")

  # assertthat::assert_that(!is.na(NA), msg = cli::cli_abort("IS NA"))
  cut(
    rating,
    breaks = c(0, 2, 4, 6, 8, 10),
    labels = c("Extremely annoying game",
               "Likely won't play this again",
               "Average - slightly boring",
               "Good - willing to play",
               "Excellent - always want to play!"),
    right = FALSE,
    ordered_result = TRUE
  )
}

# What to test?
# How to deal with NA values in rating?
# Or with values outside 1 - 10 ?
# Output is an ordered factor
# It cuts where we want it to
