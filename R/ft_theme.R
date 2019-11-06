#' ggplot2 theme for FT graphs.
#' @param legend_right Logical indicating whether legend should be placed to
#' the right of the plot. If FALSE, the default, legend is positioned above the
#' plot.
#' @param theme_dark Logical indicating whether to use the dark color scheme
#' @param base_size The base font size
#' @param base_family Font family
#' @param base_line_size Default
#' @param base_rect_size Default
#' @importFrom ggplot2 %+replace%
#' @export
#' @examples
#' library(ggplot2)
#' ggplot(mpg, aes(displ, hwy, color = class)) +
#'   geom_point() +
#'   ft_theme()
#'
#' ggplot(mpg, aes(displ, hwy)) +
#'   geom_point() +
#'   facet_wrap(vars(class)) +
#'   ft_theme()
#'

ft_theme <- function(legend_right = FALSE,
                     theme_dark = FALSE,
                     base_size = 12,
                     base_family = "",
                     base_line_size = base_size / 170,
                     base_rect_size = base_size / 170) {

  half_line <- base_size/2
  grid_line_color <- ft_colors("black-20")
  grid_line_size <- 0.2
  title_text_color <- ft_colors("black")
  other_text_color <- ft_colors("black-50")

  if(legend_right == TRUE){
    spec_legend_position <- "right"
    spec_legend_direction <- "vertical"
    legend_justification_spec <- "center"
    legend_box_spacing_spec = ggplot2::unit(2 * half_line, "pt")
  } else {
    spec_legend_position <- "top"
    spec_legend_direction <- "horizontal"
    legend_justification_spec <- c(0,0)
    legend_box_spacing_spec <- ggplot2::unit(0, "char")
  }

  if(theme_dark == TRUE){
    grid_line_color <- ft_colors_a("linesocial-axis-lines")
    title_text_color <- ft_colors_a("white")
    other_text_color <- ft_colors_a("linesocial-text")
    background_color <- ft_colors_a("linesocial-background-slate")
  }

  ggplot2::theme_minimal(base_size = base_size,
                         base_family = base_family,
                         base_line_size = base_line_size) %+replace%
    ggplot2::theme(
      plot.title = ggplot2::element_text(
        color = title_text_color,
        size = ggplot2::rel(1.2),
        face = "bold",
        hjust = 0
      ),
      plot.subtitle = ggplot2::element_text(
        color = other_text_color,
        face = "bold",
        hjust = 0,
        margin = ggplot2::margin(t = half_line)
      ),
      plot.caption = ggplot2::element_text(
        color = other_text_color,
        hjust = 0,
        size = ggplot2::rel(0.8)
      ),
      axis.title = ggplot2::element_text(
        color = other_text_color,
        size = ggplot2::rel(0.9),
        face = "bold"
      ),
      axis.text = ggplot2::element_text(
        color = other_text_color,
        size = ggplot2::rel(0.8),
        margin = ggplot2::margin()
      ),
      axis.line = ggplot2::element_line(
        colour = grid_line_color,
        size = grid_line_size
      ),
      axis.line.y = ggplot2::element_blank(),
      axis.ticks = ggplot2::element_line(
        color = grid_line_color,
        size = grid_line_size
      ),
      axis.ticks.y = ggplot2::element_blank(),
      axis.ticks.length = ggplot2::unit(1,"char"),
      panel.grid.major.y = ggplot2::element_line(
        color = grid_line_color,
        size = grid_line_size
      ),
      panel.grid.major.x = ggplot2::element_blank(),
      panel.grid.minor = ggplot2::element_blank(),
      legend.position = spec_legend_position,
      legend.justification = legend_justification_spec,
      legend.direction = spec_legend_direction,
      legend.title = ggplot2::element_text(hjust = 0,
                                           color = other_text_color,
                                           size = ggplot2::rel(0.9),
                                           face = "bold"),
      legend.spacing.x = ggplot2::unit(1, "char"),
      legend.text = ggplot2::element_text(
        color = other_text_color,
        hjust = 0,
        size = ggplot2::rel(0.8)
      ),
      legend.margin = ggplot2::margin(),
      legend.box.spacing = legend_box_spacing_spec,
      plot.margin = ggplot2::margin(1,1,1,1, unit = "char"),

      complete = TRUE
    )
}
