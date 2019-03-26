#' Import pysal Output
#'
#' @param path File path where script should be placed
#'
#' @importFrom jsonlite read_json
#'
#' @export
pyr_import <- function(path){

  # read json
  out <- jsonlite::read_json(path)

  # return output
  return(out)

}
