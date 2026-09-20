splitColumnFromBracket <- function(df, column_to_split, delim = ", ") {

  # NSE - adds '_clean' to end of colname
  clean_col <- paste0(rlang::as_name(rlang::ensym(column_to_split)), "_clean")

  df |>
    dplyr::mutate(
      # Regex for starts with [ or ends with ]
      "{clean_col}" := stringr::str_remove_all({{ column_to_split }}, "^\\[|\\]$|'"),
      # Regex to find a comma and space before' Jr.' or 'Jr' and \\1 inserts stuff in parenthesis back in
      "{clean_col}" := stringr::str_replace_all(.data[[clean_col]], ",\\s*(Jr\\.?)", replacement = " \\1")
    ) |>
    tidyr::separate_wider_delim(
      {{ clean_col }},
      delim = delim,
      names_sep = "",
      too_few = "align_start"
    )
}

# What to test?
#
