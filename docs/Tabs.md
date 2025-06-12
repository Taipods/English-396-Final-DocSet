# How to create a new analyitc/tab inside the software
This will be a guide on creating a new tab, this example is going add a tab
that will show albums with a rating of 10.

**Creating new tabs**

1. Create a new R file inside the MyFavoriteAlbums folder.

2. Create a function that analyze the data that you want. The function below filters out all the albums that isn't a 10 and only return those that are 10s.

```r
 library(dplyr)

# Grab the music data.
album_data <- read.csv("data/album-rankings.csv")

# Function to get albums with a perfect 10 rating
perfect_albums <- function(){
  select(filter(album_data, Rating == 10), Ranking, Album, Artist, Year)
}
```

3. Open **app.R** file. Add source("name.R"), where name is the file with your function

```r
# Use source() to execute the `app_ui.R` and `app_server.R` files. These will
# define the UI value and server function respectively.
# List additional source files for functions
source("app_ui.R")
source("app_server.R")
source("albums_by_band.R")
source("number_one_albums.R")
source("albums_by_year.R")
source("vinyl.R")
source("compare_bands.R")
source("albums_with_10s_only")
```
4. Open **app_ui.R** file. At the very botton,
add tabPanel("name of the tab",
h2("heading"),
tableOutput("output of the function")).

```R
 tabPanel("Band Comparison",
                 htmlOutput("text8"),
                 selectInput("band_name_1", "First band or artist:", all_bands),
                 selectInput("band_name_2", "Second band or artist:", all_bands),
                 htmlOutput("text9"),
                 plotOutput("compare_bands"))
      )
tabPanel("Albums with only 10s rating",
                h2("10s"),
                tableOutput("perfect_albums"))
```

5. Open app_server.R, The output with the call to your functuon.

```R
output$perfect_table <- renderTable({
    return(perfect_albums())
  })
```

6. Run the software, now with your new tab.