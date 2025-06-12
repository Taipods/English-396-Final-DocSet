# API References

## Reference for Functions

## `albums_by_bands(band.var)`

### Retrieve albums by a specific band

**Description**
Filters the album for a given artist and returns album details ordered by year.

**Usage**
```r
albums_by_bands(band.var)
```

**Arguments**
- `band.var`: The name of the band.

**Value**
Returns a data frame containing Album, Year, and Rating for the specified band.

**Examples**
```r
albums_by_bands("Beatles")
albums_by_bands("Nirvana")
```

---

## `band_album_comparison_chart(var.artist1, var.artist2)`

### Creates a chart comparing album ratings of two bands or artists

**Description**
Creates a line chart showing the album ratings over time for two specified artists.
The x-axis represents the release year and the y-axis represents the rating.

**Usage**
```r
band_album_comparison_chart(var.artist1, var.artist2)
```

**Arguments**
- `var.artist1`: The name of the first band or artist.
- `var.artist2`: The name of the second band or artist.

**Value**
A ggplot object representing the line chart. Artist 1 is colored red, and Artist 2 is colored blue.

**Examples**
```r
band_album_comparison_chart("Beatles", "Nirvana")
band_album_comparison_chart("Maroon 5", "Bruno Mars")
```

---

## `band_album_count(band.var)`

### Count the number of albums for a specific band

**Description**
Filters albums for a given artist, counts albums, and prints the count to the console.

**Usage**
```r
band_album_count(band.var)
```

**Arguments**
- `band.var`: The name of the band

**Value**
Prints the number of albums to the console.

**Examples**
```r
band_album_count("Beatles")
band_album_count("Nirvana")
```

---

## `band_mean_rating(band.var)`

### Calculate the mean album rating for a specific band/artist

**Description**
Filters albums by bands and averages their album ratings.
It then prints this average to the console.

**Usage**
```r
band_mean_rating(band.var)
```

**Arguments**
- `band.var`: The name of the band.

**Value**
Prints the average rating to the console as a string, formatted to two decimal places.
For example: `"Average Rating: 10"`.

**Examples**
```r
band_mean_rating("Beatles")
band_mean_rating("Nirvana")
```

---

## `missing_vinyl()`

### Find albums not owned on vinyl

**Description**
Finds albums with a rating of 9 or higher where the 'Vinyl' column is empty.
Results are ordered by rating in descending order.

**Usage**
```r
missing_vinyl()
```

**Value**
Data with Album, Artist, and Rating for top-rated albums not owned on vinyl.

**Examples**
```r
missing_vinyl()
```

---

## `number_one_album(var.startyear, var.endyear)`

### List number one ranked albums given a specified year range

**Description**
Finds albums ranked as number 1 within a given start and end year, inclusively.

**Usage**
```r
number_one_album(var.startyear, var.endyear)
```

**Arguments**
- `var.startyear`: The starting year.
- `var.endyear`: The ending year.

**Value**
Data with Year, Album, and Artist for albums ranked number 1 in the specified range.

**Examples**
```r
number_one_album(2003, 2005)
number_one_album(1999, 1999)
```

---

## `year_albums(year.var)`

### List top albums for a specific year

**Description**
Filters the albums for a given year and returns a selection of album details, ordered by their ranking.

**Usage**
```r
year_albums(year.var)
```

**Arguments**
- `year.var`: The year to filter albums by.

**Value**
Data with Ranking, Album, and Artist for the specified year.

**Examples**
```r
year_albums(2003)
year_albums(2000)
```

---

## `year_most_vinyl()`

### Find years with the most vinyl owned

**Description**
Finds album data for entries where 'Vinyl' is marked as `"v"`, meaning it's owned.
Counts the number of owned vinyl albums per year and sorts the results by count in descending order.

**Usage**
```r
year_most_vinyl()
```

**Value**
Data with Year and the count of vinyl owned per year.

**Examples**
```r
year_most_vinyl()
```

### For other related function use ?“Function name” in terminal of rstudio

