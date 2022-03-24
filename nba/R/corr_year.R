#' A Function for the correlation matrix in a given year
#'
#' This function allows you to get the correlation matrix for all numeric variables in the NBA data for that year
#' @param year an individual year of the NBA games
#' @export
#' @examples
#' corr_year()
corr_year <- function(x){
  nba %>% dplyr::filter(Year==x) %>% dplyr::select_if(is.numeric) %>%
    dplyr::select(-Year) %>% cor()
}
