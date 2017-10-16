#' import all sheets from an excel file
#'
#' @param filename path to xslx file
#' @import readxl
#' @import assertthat
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
  assert_that(is.readable(filename))
  sheets <- excel_sheets(filename)
  x <- lapply(sheets, function(sheet) read_excel(filename, sheet = sheet))
  names(x) <- sheets
  x
}
