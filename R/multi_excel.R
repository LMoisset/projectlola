#' import all sheets from an excel file
#'
#' @param filename path to xslx file
#' @import readxl
#'
#'
#' @return a list
#' @export
#'
#' @examples
#' \dontrun{
#' multi_excel("folder/toxlsxfile")
#' }
#'
multi_excel <- function(filename){
  assertthat::assert_that(is.readable(filename))
  sheets <- readxl::excel_sheets(filename)
  x <- lapply(sheets, function(sheet) readxl::read_excel(filename, sheet = sheet))
  names(x) <- sheets
  x
}
