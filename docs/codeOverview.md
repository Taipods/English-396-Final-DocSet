# Codebase Overview

## Organization

At the top level of the repository, all R files are located directly within the main directory. This allows developers to access and modify the R files without searching through many directories. All data files (CSV) are in a dedicated subdirectory, 'Data.' This separation keeps the data organized and away from the main directory containing the R files, ensuring a clean repository structure.

### Display

Three files are responsible for the display of the website: `app.R`, `app_server.R`, and `app_ui.R`. These three files form the backbone of rendering the display.

-   **app.R:** Serves as the execution point for the other two files.
-   **app_server.R:** Handles rendering almost everything into HTML for the server.
-   **app_ui.R:** Responsible for creating the UI elements such as buttons, sliders, and more.

### Data Transformation

The following files contain various functions to transform the data set in multiple ways.

**Note:** Any changes to the data column names will affect these files' functionality and potentially cause malfunctions.

-   `albums_by_band.R`
-   `albums_by_year.R`
-   `compare_bands.R`
-   `number_one_albums.R`
-   `vinyl.R`