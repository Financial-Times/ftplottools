
#' FT Color Palettes
#'
#' Functions to create color palettes from FT colors
#' @param n Number of colors required
#' @name ft_palettes
#' @details Color palettes built from
#'   \href{https://registry.origami.ft.com/components/o-colors}{Origami} colors.
#' @examples
#' # 10 colors from main palette
#' ft_main(10)
#'

#' @rdname ft_palettes
#' @export
ft_main <- ft_pal()

#' @rdname ft_palettes
#' @export
origami_primary <- ft_pal(palette = "origami primary")

#' @rdname ft_palettes
#' @export
origami_secondary <- ft_pal(palette = "origami secondary")

#' @rdname ft_palettes
#' @export
origami_tertiary <- ft_pal(palette = "origami tertiary")

#' @rdname ft_palettes
#' @export
blacks <- ft_pal(palette = "black")

#' @rdname ft_palettes
#' @export
whites <- ft_pal(palette = "white")

#' @rdname ft_palettes
#' @export
clarets <- ft_pal(palette = "claret")

#' @rdname ft_palettes
#' @export
oxfords <- ft_pal(palette = "oxford")

#' @rdname ft_palettes
#' @export
teals <- ft_pal(palette = "teal")




