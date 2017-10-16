#' Reading multiple csv files
#'
#' @param folder path to the folder
#'
#' @return a list
#' @export
#' @importFrom utils write.csv2
#' @import assertthat
#'
#' @examples
#'
#' \dontrun{
#' my_csv_reader("../../path/to.folder")
#' }
my_csv_reader <- function(folder){
  assert_that(not_empty(folder))
  X <- list.files(path=folder, pattern = ".*csv$", full.names = TRUE )
  result <- lapply(X, read.csv2)
  return (result)
}
