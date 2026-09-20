extractRatingSummary <- function(df, group_by_this){
  df |>
    dplyr::group_by( {{ group_by_this }}) |>
    dplyr::summarise(n = dplyr::n(), .groups = "drop") |>
    dplyr::mutate(perc = n / sum(n) * 100)
}

# We know this should always output a df with there cols: group_by_this name, n,
# perc
