#' Compare the popularity of two names
#'
#' @param names names you're interested in comparing
#' @import dplyr
#' @import assertthat
#' @import prenoms
#'
#' @return a graph
#' @export
#'
#' @examples
#' \dontrun{
#' draw_names("thomas, margaux")
#' }
draw_names <- function(names){
  assertthat::validate_that(is.character(names))
  dataP <- prenoms %>%
    filter (name %in% names) %>%  group_by(name, year) %>% summarise(total=sum(n))
  ggplot(data=dataP, aes(x=year, y=total, color=name)) + geom_line()
}
