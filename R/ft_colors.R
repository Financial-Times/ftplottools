
# FT Origami Colours
# https://registry.origami.ft.com/components/o-colors@4.9.0
ft_o_colors <- c(
  paper = "#FFF1E5",
  black = "#000000",
  white = "#FFFFFF",
  claret = "#990F3D",
  oxford = "#0F5499",
  teal = "#0D7680",
  wheat = "#F2DFCE",
  sky = "#CCE6FF",
  slate = "#262A33",
  velvet = "#593380",
  mandarin = "#FF8833",
  lemon = "#FFEC1A",
  jade = "#00994D",
  wasabi = "#96CC28",
  crimson = "#CC0000",
  candy = "#FF7FAA",
  `black-5` = "#F2E5DA",
  `black-10` = "#E6D9CE",
  `black-20` = "#CCC1B7",
  `black-30` = "#B3A9A0",
  `black-40` = "#999189",
  `black-50` = "#807973",
  `black-60` = "#66605C",
  `black-70` = "#4D4845",
  `black-80` = "#33302E",
  `black-90` = "#1A1817",
  `white-10` = "#FFF2E8",
  `white-20` = "#FFF4EA",
  `white-40` = "#FFF7EF",
  `white-60` = "#FFF9F5",
  `white-80` = "#FFFCFA",
  `claret-30` = "#4D081F",
  `claret-40` = "#660A29",
  `claret-50` = "#800D33",
  `claret-60` = "#990F3D",
  `claret-70` = "#B31247",
  `claret-80` = "#CC1452",
  `claret-90` = "#E6175C",
  `claret-100` = "#FF1A66",
  `oxford-30` = "#082A4D",
  `oxford-40` = "#0A3866",
  `oxford-50` = "#0D4680",
  `oxford-60` = "#0F5499",
  `oxford-70` = "#1262B3",
  `oxford-80` = "#1470CC",
  `oxford-90` = "#177EE6",
  `oxford-100` = "#1A8CFF",
  `teal-20` = "#052F33",
  `teal-30` = "#08474D",
  `teal-40` = "#0A5E66",
  `teal-50` = "#0D7680",
  `teal-60` = "#0F8E99",
  `teal-70` = "#12A5B3",
  `teal-80` = "#14BDCC",
  `teal-90` = "#17D4E6",
  `teal-100` = "#1AECFF"
)

ft_colors <- function(...){
  #' Return FT Color Hex Codes
  #'
  #' @param ... Names of the colors
  #'

  cols <- c(...)

  if(is.null(cols)){
    return(ft_o_colors)
  }

  ft_o_colors[cols]
}


# FT Origami Palettes
ft_o_palettes <- list(
  `main` = ft_colors("oxford","teal-100","wasabi","candy"),
  `origami primary` = ft_colors("paper", "black", "white", "claret", "oxford", "teal"),
  `origami secondary` = ft_colors("wheat","sky","slate","velvet","mandarin","lemon"),
  `origami tertiary` = ft_colors("jade","wasabi","crimson","candy"),
  `black` = ft_colors("black-5","black-10","black-20","black-30","black-40","black-50","black-60","black-70","black-80","black-90"),
  `white` = ft_colors("white-10","white-20","white-40","white-60","white-80"),
  `claret` = ft_colors("claret-30","claret-40","claret-50","claret-60","claret-70","claret-80","claret-90","claret-100"),
  `oxford` = ft_colors("oxford-30","oxford-40","oxford-50","oxford-60","oxford-70","oxford-80","oxford-90","oxford-100"),
  `teal` = ft_colors("teal-20","teal-30","teal-40","teal-50","teal-60","teal-70","teal-80","teal-90","teal-100")
)


#' FT Colour Palettes Generator.
#'
#' Returns a function that can interplotate between colors in a palette.
#'
#' @param palette Character name of a palette
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#'
ft_pal <- function(palette = "main", reverse = FALSE, ...){

  pal <- ft_o_palettes[[palette]]

  if(reverse) pal <- rev(pal)

  grDevices::colorRampPalette(pal, ...)
}
