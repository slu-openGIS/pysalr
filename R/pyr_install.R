#' Install saveModelOutput.py
#'
#' @description Add the \code{saveModelOutput.py} to a project.
#'
#' @param path File path where script should be placed
#' @param overwrite Overwrite files if they exist. If this is FALSE and the file exists
#'     an error will be thrown.
#'
#' @export
pyr_install <- function(path, overwrite = TRUE){

  # copy file
  fs::file_copy(system.file("extdata", "saveModelOutput.py", package = "pysalr", mustWork = TRUE),
                paste0(path,"/saveModelOutput.py"), overwrite = overwrite)

}
