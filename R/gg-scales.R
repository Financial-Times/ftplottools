

scale_color_ft <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...){
  #' Color scale constructor for FT colors
  #'
  #' @param palette Character name of a palette in ft_o_palettes
  #' @param discrete Boolean indicating whether color aesthetic is discrete or not
  #' @param reverse Boolean indicating whether the palette should be reversed
  #' @param ... Additional arguments passed to discrete_scale() or scale_color_gradientn()
  #'

  pal <- ft_pal(palette = palette, reverse = reverse)

  if(discrete){
    ggplot2::discrete_scale("colour",
                            paste0("FT ", palette),
                            palette = pal,
                            ...)
  } else {
    ggplot2::scale_color_gradientn(colours = pal(256), ...)
  }
}


scale_fill_ft <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  #' Fill scale constructor for FT colors
  #'
  #' @param palette Character name of a palette in ft_o_palettes
  #' @param discrete Boolean indicating whether color aesthetic is discrete or not
  #' @param reverse Boolean indicating whether the palette should be reversed
  #' @param ... Additional arguments passed to discrete_scale() or scale_color_gradientn()
  #'
  pal <- ft_pal(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("fill", paste0("FT ", palette), palette = pal, ...)
  } else {
    ggplot2::scale_fill_gradientn(colours = pal(256), ...)
  }
}
