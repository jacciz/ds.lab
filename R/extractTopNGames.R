extractTopNGamesByGroup <- function(df, group_by_this, take_max_of_this, top_n){
  df |>
    dplyr::group_by({{group_by_this}}) |>
    dplyr::slice_max(order_by = {{take_max_of_this}}, n = top_n) |>
    dplyr::ungroup()
}

# What to test?
# How to handle ties
# Should return a non-grouped object - dplyr::is_grouped_df()
# What if group is NULL
# It does only take max n values
