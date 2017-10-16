#' Draw the graph associated to a name
#'
#' @param the_name name you're looking for
#' @param the_sex sex you're looking for
#' @import ggplot2
#'
#' @return a graph
#' @export
#'
#' @examples
#' \dontrun{
#' draw_a_name("eric")
#' }

draw_a_name <- function(the_name, the_sex){
  assertthat::validate_that(is.character(the_name))
  dataP <- prenoms %>%
    filter (sex == the_sex, name == the_name) %>%  group_by(year) %>% summarise(total=sum(n))
  ggplot(data=dataP, aes(x=year, y=total)) + geom_line()
}
