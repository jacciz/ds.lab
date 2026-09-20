extractTopNGamesAcrossCols <- function(df, start_with_colname, top_n = 10){
  df |>
    tidyr::pivot_longer(starts_with(start_with_colname), values_to = "value", names_to = "colname") |>
    dplyr::count(value, sort = TRUE) |>
    dplyr::filter(!is.na(value), value !="(Uncredited)") |>
    dplyr::slice_max(n = top_n, order_by = n)
}

# What to test?
# How to handle ties
# It does remove NA and Uncredited
# It does only take max n values
