#' A Function for the Oldest NBA player in a given year
#'
#' This function allows you to find the oldest player in the NBA data for that year
#' @param year an individual year of the NBA games
#' @export
#' @examples
#' oldest_player()
oldest_player <- function(x){
  nba %>% dplyr::filter(Year==x) %>% dplyr::arrange(desc(Age),Player) %>%
    dplyr::select(Player) %>% head(1)
}
