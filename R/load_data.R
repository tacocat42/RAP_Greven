#' Easily filter unemployment data for Luxembourg
#' @param file A data frame containing unemployment data for Luxembourg.
#' @importFrom readr read_csv
#' @import dplyr
#' @export
#' @return A data frame
#' @details
#' This function allows the user to load a sex-weight-height csv file. The file
#' is then transformed into a tibble.



load_hw_data <- function(file){
  read_csv(file) %>%
    as_tibble()

}
