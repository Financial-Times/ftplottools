#' ggplot2 theme for FT graphs.
#' @param base_size The base font size
#' @param base_family Font family
#' @export
ft_theme <- function(base_size = 12,
                     base_family = "",
                     base_line_size = base_size / 170,
                     base_rect_size = base_size / 170) {

  half_line <- base_size/2
  grid_line_color <- ft_colors("black-20")
  grid_line_size <- 0.2
  title_text_color <- ft_colors("black")
  other_text_color <- ft_colors("black-50")

  ggplot2::theme_minimal(base_size = base_size,
                         base_family = base_family,
                         base_line_size = base_line_size) %+replace%
    ggplot2::theme(
      plot.title = ggplot2::element_text(
        color = title_text_color,
        face = "bold",
        hjust = 0
      ),
      axis.title = ggplot2::element_text(
        color = other_text_color,
        size = ggplot2::rel(0.9),
        face = "bold"
      ),
      axis.text = ggplot2::element_text(
        color = other_text_color,
        size = ggplot2::rel(0.8)
      ),
      axis.line.x = ggplot2::element_line(
        colour = grid_line_color,
        size = grid_line_size
      ),
      panel.grid.major.y = ggplot2::element_line(
        color = grid_line_color,
        size = grid_line_size
      ),
      panel.grid.major.x = ggplot2::element_blank(),
      panel.grid.minor = ggplot2::element_blank(),
      legend.position = "top",
      legend.justification = c(0,0),
      legend.direction = "horizontal",
      legend.title = ggplot2::element_blank(),
      legend.spacing.x = ggplot2::unit(1, "char"),
      legend.text = ggplot2::element_text(
        color = other_text_color,
        hjust = 0,
        size = ggplot2::rel(0.8)
      ),

      complete = TRUE
    )
}

