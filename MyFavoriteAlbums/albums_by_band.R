library(dplyr)
library(DT)

# Grab the music data.
# See documentation for how to format the data
album_data <- read.csv("data/album-rankings.csv")

# List all of the bands in alphabetical order
# Used to populate the pull-down menu
all_bands <- sort(unique(album_data$Artist))




#' Retrieve albums by a specific band
#'
#' Filters the album for given artist, returns album details ordered by year.
#'
#' @param band.var The name of the band.
#' @return data of Album, Year, and Rating for the specified band.
#' @examples
#' # albums_by_bands("Beatles")
#' # albums_by_bands("Nirvana")
albums_by_bands <- function(band.var){
  band_albums <- select(filter(album_data[order(album_data$Year),], Artist==band.var), Album, Year, Rating)
}

#' Calculate the mean album rating for a specific band/artist
#'
#' Filters albums by bands and average of their album ratings.
#' It then prints this average to the console.
#'
#' @param band.var The name of the band.
#' @return Prints the average rating to the console as a string, formatted to two decimal places.
#'         For example: "Average Rating: 10".
#' @examples
#' # band_mean_rating("Beatles")
#' # band_mean_rating("Nirvana")
band_mean_rating <- function(band.var){
  band_albums <- select(filter(album_data[order(album_data$Year),], Artist==band.var), Album, Year, Rating)
  avg_rating <- mean(band_albums$Rating)
  print(paste0("Average Rating: ", format(round(avg_rating, 2), nsmall =2)))
}


#' Count the number of albums for a specific band
#'
#' Filters albums for given artist, counts albums.
#' It then prints the count to the console.
#'
#' @param band.var The name of the band
#' @return Prints the number albums to the console.
#' @examples
#' # Assuming album_data is loaded
#' # band_album_count("Beatles")
#' # band_album_count("Nirvana")
band_album_count <- function(band.var){
  band_albums <- select(filter(album_data[order(album_data$Year),], Artist==band.var), Album, Year, Rating)
  band_count <-count(band_albums)
  print(paste0("Number of Albums Ranked: ", band_count))
}



