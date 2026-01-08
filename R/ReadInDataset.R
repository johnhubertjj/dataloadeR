#' Load a dataset into R
#'
#' Instead of relying on remembering and loading multiple types of data loading
#' libraries, this function is a wrapper that contains several.
#'
#' @param file file to be read into R. Must be tabular data
#' @param method the library to load the file into R
#' @return NULL
#' @export
read_in_dataset <- function(file, method = c("data.table", "RData",
                                             "feather", "rds")) {
  if( method == "data.table"){
    data.table::fread(file)
  } else if( method == "RData"){
    base::mget( load(file))
  } else if( method == "feather"){
    feather::read_feather(file)
  } else if( method == "rds"){
    base::readRDS( file)
}
}
