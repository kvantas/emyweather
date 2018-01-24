#' Climatic data from National Meteorological Service weather stations
#'
#' A dataset containing the climatic variables from 21 stations of the
#' Greek National Meteorological Service. The time period is from 1975 to 2004
#'
#' @format A data frame with 1679308 rows and 13 variables:
#' \describe{
#'   \item{date}{the observation's date}
#'   \item{station_id}{Greek National Meteorological Service station ID}
#'   \item{pressure}{Pressure (hPa)}
#'   \item{dry_temp}{Dry temperature (degrees C)}
#'   \item{wet_temp}{Wet temperature (degrees C)}
#'   \item{max_temp}{Maximum temperature (degrees C)}
#'   \item{min_temp}{Minimum temperature (degrees C)}
#'   \item{rel_humidity}{Relative humidity (-)}
#'   \item{wind_direction}{Wind direction (degrees)}
#'   \item{wind_force_knot}{Wind force (knots)}
#'   \item{Visibility}{Visibility (km)}
#'   \item{total_cloud_amount}{Total cloud amount (-)}
#'   \item{precipitation}{Precipitation height (mm)}
#' }
#' @source \url{http://www.emy.gr/}
"emy_data"
