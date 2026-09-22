categorizeRatings <- function(rating){

  # Maybe we don't want NA values ?
  # assertthat::assert_that(all(!is.null(rating), !is.na(rating), is.numeric(rating)), msg = "rating must not be NA or NULL")
  #
  # assertthat::assert_that(is.numeric(rating), msg = "rating must be an integer")

  cut(
    rating,
    breaks = c(0, 2, 4, 6, 8, 10.0001),
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
# Output is an ordered factor
# Correct ordered factors
# How to deal with NA values in rating?
# Values at the ends - 0 and 10
# Or with values outside 1 - 10 ?
# It cuts where we want it to as right = FALSE
