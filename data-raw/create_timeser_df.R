
#' Greek National Meteorological Service Dataset
#'
#' \code{emy_create} uses as input a list of directories. Each directory is a
#' station and the files in it are the open data, csv files, from www.emy.gr.
#'
#' @param dir_names is a directories list.
#'
#' @return a tidy data frame with the open meteorological data from National
#' Meteorological Service
#' @export emy_create
#'
#' @examples
#' \dontrun{
#' # read a list of directories in ./data/emy
#' dir_names <- list.files('./data-raw/emy', full.names = TRUE)
#'
#' # create a data frame using all the files in the directories list
#' emy_data <- emy_create(dir_names)
#' }
emy_create <- function(dir_names) {

  plyr::ldply(dir_names, function(directory) {
    message(paste("Parsing ", directory))
    files <- list.files(directory, full.names = TRUE)

    data <- plyr::ldply(files, function(in_file){

      ## read file
      tmp <- utils::read.table(file = in_file,
                               header = TRUE,
                               stringsAsFactors = FALSE,
                               sep = ";",
                               dec = ",")

      ## create Dates
      tmp$Date <- paste0(tmp$OBSERVATIONYEAR, "-",
                         tmp$OBSERVATIONMONTH, "-",
                         tmp$OBSERVATIONDAY)
      ## create Time
      tmp$Time <- formatC(tmp$OBSERVATIONHOUR, width = 2, format = "d",
                          flag = "0")
      tmp$Time  <- paste0(tmp$Time, ":00")

      ## create POSIXlt
      tmp$DT <- paste(tmp$Date, tmp$Time)
      tmp$DTposix <- as.POSIXct(tmp$DT, format =  "%Y-%m-%d %H:%M",
                               tz = "Europe/Athens")

      ## convert pressure to numeric
      tmp$BARPRESSURE <- stringr::str_replace(tmp$BARPRESSURE, "\\.", "")
      tmp$BARPRESSURE <- stringr::str_replace(tmp$BARPRESSURE, "\\,", "\\.")
      tmp$BARPRESSURE <- as.numeric(tmp$BARPRESSURE)

      ## translate names
      tmp_sub <- tmp[c("DTposix", "STATIONID", "BARPRESSURE", "DRYTEMP",
                       "WETTEMP", "MAXTEMP", "MINTEMP", "RELHUMIDITY",
                       "WINDDIRECTION", "WINDFORCEKNOT", "VISIBILITY",
                       "TOTALCLOUDAMOUNT", "PRECIPHEIGHT")]
      names(tmp_sub) <- tolower(names(tmp_sub))
      names(tmp_sub) <- c("date", "station_id", "pressure", "dry_temp",
                          "wet_temp", "max_temp", "min_temp", "rel_humidity",
                          "wind_direction", "wind_force_knot", "visibility",
                          "total_cloud_amount", "precipitation")
      return(tmp_sub)
    })
  })
}
