#' Install saveModelOutput.py
#'
#' @description Add the \code{saveModelOutput.py} to a project.
#'
#' @param path
#'
#' @export
pyr_install <- function(path){

  # copy file
  fs::file_copy(system.file("extdata", "saveModelOutput.py", package = "pysalr", mustWork = TRUE),
                paste0(path,"/saveModelOutput.py"), overwrite = overwrite)

}
