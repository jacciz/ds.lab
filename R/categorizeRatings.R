categorizeRatings <- function(rating){
  cut(
    rating,
    breaks = c(0, 2, 4, 6, 8, 10),
    labels = c("Extremely annoying game",
               "Likely won't play this again",
               "Average - slightly boring",
               "Good - willing to play",
               "Excellent - always want to play!")
  )
}

# Expected behavior
# Output is an ordered factor
# 10 should be "Excellent"
# 2 is mapped to "Likely won't play again"
# Want user to remove NA - 2 ways to write error messages and 2 ways to write unit tests for those
# Want only values 0 - 10

# Things we could test
# Input is an numeric
# How to deal with NA values in rating?
# Values at the ends - 0 and 10
# Or with values outside 1 - 10 ?
# right = FALSE,
# include.lowest = TRUE,
# ordered_result = TRUE
