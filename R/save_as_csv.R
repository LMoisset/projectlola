#' Sava a dataset in a csv file, output full csv path
#'
#' @param dataset name of the data frame
#' @param filename name of the csv file the file will be saved as
#' @param row.names names of the rows
#' @param ... more parameters
#' @importFrom utils write.csv2
#' @importFrom utils read.csv2
#' @import assertthat
#'
#' @return path to csv file
#' @export

#'
#' @examples
#' \dontrun{
#' save_as_csv(iris, "outputiris.csv", row.names=FALSE, ...)
#' }
#'
save_as_csv <- function(dataset, filename, row.names = FALSE, ...){
  assert_that(has_extension(filename, "csv"))
  assert_that(not_empty(dataset))
  write.csv2(x = dataset, file = filename, row.names = row.names, ...)
  invisible(normalizePath(filename))
}
