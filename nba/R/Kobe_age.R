#' A Function for Kobe's age
#'
#' This function allows you to find Kobe Bryant's age for any year that he's playing NBA
#' @param year an individual year of the NBA games
#' @export
#' @examples
#' Kobe_age()
Kobe_age <- function(x){
  if(x<1997){
    print("Kobe didn't start playing in NBA in this year")
  }else if(x>2016){
    print("Kobe stopped playing in NBA in this year")
  }else{
    nba %>% dplyr::filter(Year==x, Player=="Kobe Bryant") %>% dplyr::select(Age)
  }
}
