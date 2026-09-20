extractTopNGames <- function(df, group_by_this, take_max_of_this, top_n){
  df |>
    dplyr::group_by({{group_by_this}}) |>
    dplyr::slice_max(order_by = {{take_max_of_this}}, n = top_n) |>
    dplyr::ungroup()
}
