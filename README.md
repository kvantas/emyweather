
<!-- README.md is generated from README.Rmd. Please edit that file -->
emyweather
==========

[![Travis-CI Build Status](https://travis-ci.org/kvantas/emyweather.svg?branch=master)](https://travis-ci.org/kvantas/emyweather) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/kvantas/emyweather?branch=master&svg=true)](https://ci.appveyor.com/project/kvantas/emyweather) [![minimal R version](https://img.shields.io/badge/R%3E%3D-3.4.0-6666ff.svg)](https://cran.r-project.org/) [![packageversion](https://img.shields.io/badge/Package%20version-0.2.0-orange.svg?style=flat-square)](https://github.com/kvantas/emyweather) [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.1159500.svg)](https://doi.org/10.5281/zenodo.1159500)

`emyweather` is an R package that contains climatic data from the [Greek National Meteorological Service](http://emy.gr), as well as a number of useful other related data sets. The climatic data come from 21 weather stations, with a time step of 3 hours and the time period is from 1975 to 2004. For more details checkout the package's [website](https://kvantas.github.io/emyweather/).

<img src="https://github.com/kvantas/emyweather/raw/master/man/figures/stations_map.png" align = "center"/>

Installation
------------

You can install emyweather from github with:

``` r
# install.packages("devtools")
devtools::install_github("kvantas/emyweather")
```

Using emyweather
----------------

This package is comprised of three data sets:

-   `emy_data`: climatic measurements
-   `emy_stations`: weather stations' coordinates and elevation
-   `borders`: borders of Greece

### `emy_data`

The variables in this data set are:

| Variable             | Description                                      |
|----------------------|--------------------------------------------------|
| date                 | The observation's date                           |
| station\_id          | Greek National Meteorological Service station ID |
| pressure             | Pressure, in hPa                                 |
| dry\_temp            | Dry temperature, in degree Celsius               |
| wet\_temp            | Wet temperature, in degree Celsius               |
| max\_temp            | Maximum temperature, in degree Celsius           |
| min\_temp            | Minimum temperature, in degree Celsius           |
| rel\_humidity        | Relative humidity, in percent                    |
| wind\_direction      | Wind direction, in degrees                       |
| wind\_force\_knot    | Wind force, in knots                             |
| visibility           | Visibility, in km                                |
| total\_cloud\_amount | Total cloud amount, in values 0 to 9             |
| precipitation        | Precipitation height, in mm                      |

Please note that these time series are not checked for consistency or errors.

### `emy_stations`

The stations' data are taken from the Greek National Data Bank for Hydrological and Meteorological Information, [Hydroscope](http://www.hydroscope.gr/) using the package [`hydroscoper`](https://github.com/ropensci/hydroscoper/blob/master/vignettes/intro_hydroscoper.Rmd). The variables are:

| Variable        | Description                                        |
|-----------------|----------------------------------------------------|
| name            | The station's name                                 |
| station\_id     | Greek National Meteorological Service station ID   |
| hydroscope\_id  | The station's ID from kyy.hydroscope.gr database   |
| water\_division | The station's Water Division                       |
| longitude       | The station's longitude in decimal degrees, ETRS89 |
| latitude        | The station's latitude in decimal degrees, ETRS89  |
| altitude        | The station's altitude, meters above sea level     |

### `borders`

The borders of Greece are taken from Geoadata.gov.gr. The variables are created using the function `tidy` from the [`broom`](https://cran.r-project.org/web/packages/broom/index.html) package for use with `geom_polygon` from [`ggplot2`](https://cran.r-project.org/web/packages/ggplot2/).

Meta
----

-   Please [report any issues or bugs](https://github.com/kvantas/emyweather/issues).
-   Licence:
    -   All code is licensed MIT.
    -   All data are from the open data sources in <http://www.emy.gr/>.
-   To cite `emyweather`, please use:

        Konstantinos Vantas (2018). emyweather: National Meteorological Service Climatic Data, R package version 0.1.0, URL https://github.com/kvantas/emyweather, DOI http://doi.org/10.5281/zenodo.1159500

    A BibTeX entry for LaTeX users is:

        @Manual{vantas2018e,
        title  = {emyweather: National Meteorological Service Climatic Data},
        author = {Konstantinos Vantas},
        year   = {2018},
        note   = {R package version 0.1.0},
        doi    = {10.5281/zenodo.1159500},
        url    = {https://github.com/kvantas/emyweather},
          }

-   Please note that this project is released with a [Contributor Code of Conduct](/CONDUCT.md). By participating in this project you agree to abide by its terms.

References
----------

[National Meteorological Service](http://www.emy.gr/) [GEODATA.gov.gr](http://geodata.gov.gr/)
