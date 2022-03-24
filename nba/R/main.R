
nba <- read.csv("/Users/stacey/Desktop/Rpkg/nba/data/nba.csv")

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



setwd("/Users/stacey/Desktop/Rpkg")
devtools::install("nba")
