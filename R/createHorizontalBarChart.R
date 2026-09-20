createHorizontalBarChart <- function(df, x_axis, y_axis){
  df |>
  arrange(.data[[y_axis]]) |>
    e_charts_(x_axis) |>
    e_bar_(y_axis, legend = FALSE) |>
    e_flip_coords() |>
    e_tooltip()
}

# What to test?
# If the correct x axis is used
# Correct class of output
# Data on first series is correct
# Correct chart type on first series

# e$x$mapping$x
#
# df <- data.frame(
#   x = seq(3),
#   y = c(1, 3, 9),
#   z = c(2, 5, 4),
#   w = c(3, 4, 3)
# )
#
# plot <- df |>
#   e_charts(x) |>
#   e_line(z)
#
# expect_s3_class(plot, "echarts4r")
# expect_s3_class(plot, "htmlwidget")
#
# expect_equal(
#   plot$x$opts$series[[1]]$data,
#   list(list(value = c(1, 2)), list(value = c(2, 5)), list(value = c(3, 4)))
# )
#
# expect_equal(
#   plot$x$opts$series[[1]]$type,
#   "line"
# )
