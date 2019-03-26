#' Import pysal Output
#'
#' @param path File path where script should be placed
#'
#' @importFrom jsonlite parse_json
#' @importFrom jsonlite read_json
#'
#' @export
pyr_import <- function(path){

  # read json
  out <- jsonlite::read_json(path)

  # parse json
  out <- jsonlite::parse_json(out)

  # return output
  return(out)

}
