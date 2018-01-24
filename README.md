
<!-- README.md is generated from README.Rmd. Please edit that file -->

# emyweather

[![Travis-CI Build
Status](https://travis-ci.org/kvantas/emyweather.svg?branch=master)](https://travis-ci.org/kvantas/emyweather)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/github/kvantas/emyweather?branch=master&svg=true)](https://ci.appveyor.com/project/kvantas/emyweather)
[![minimal R
version](https://img.shields.io/badge/R%3E%3D-3.4.0-6666ff.svg)](https://cran.r-project.org/)
[![packageversion](https://img.shields.io/badge/Package%20version-0.1.0-orange.svg?style=flat-square)](https://github.com/kvantas/emyweather)

This package contains climatic data from the Greek National
Meteorological Service, as well as a number of useful other related data
sets.

The climatic data are taken from the Greek National Meteorological
Service and come from 21 weather stations, with a time step of 3 hours.
The time period is from 1975 to 2004. The variables are: air pressure,
temperature (dry, wet, max and min), relative humidity, wind (direction
and speed), visibility, total cloud amount and precipitation. These time
series are not checked for consistency or errors.

## Data sources

  - National Meteorological Service <http://www.emy.gr/>

## Installation

You can install emyweather from github with:

``` r
# install.packages("devtools")
devtools::install_github("kvantas/emyweather")
```

## Using emyweather

This package contains three data sets:

  - `emy_data`: climatic measurements
  - `emy_stations`: weather stations’ coordinates and elevation
  - `borders`: borders of Greece

## Meta

  - Please [report any issues or
    bugs](https://github.com/kvantas/emyweather/issues).

  - Licence:
    
      - All code is licensed MIT.
      - All data are from the open data sources in <http://www.emy.gr/>.

  - To cite `emyweather`, please
        use:
    
        Konstantinos Vantas (2018). emyweather: National Meteorological Service Climatic Data, R package version 0.1.0, URL https://github.com/kvantas/emyweather
    
    A BibTeX entry for LaTeX users is
    
    ``` 
     @Manual{,
      title = {emyweather: National Meteorological Service Climatic Data},
      author = {Konstantinos Vantas},
      year = {2018},
      note = {R package version 0.1.0},
      url = {https://github.com/kvantas/emyweather},
    }
    ```

  - Please note that this project is released with a [Contributor Code
    of Conduct](/CONDUCT.md). By participating in this project you agree
    to abide by its terms.

## References

[National Meteorological Service](http://www.emy.gr/)
