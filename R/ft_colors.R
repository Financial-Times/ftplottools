
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





#' FT Colour Palettes.
#'
#' The \code{ft_colors} function returns a different ft color palettes to use in your graphs.
#' Palette list is "main", "greys", "reds", "blues", "paired"
#' @param palette A string.
#' @return A vector of colour hex codes
#' @export
ft_colors <- function(palette = "main"){
  if(!length(palette) == 1){
    stop("Input must be string of palette name")
  }
  main <- c("#9e2f50","#ff7f8a","#3a70af","#f6801a","#2bbbbf","#410057","#505050","#99c6fb","#27757b","#8b572a")
  greys <- c("#b0b0b0","#999999","#777777","#505050","#333333","#000000")
  reds <- c("#ebbcb3","#df9c92","#d17c70","#c36256","#b1493f","#9e2f50")
  blues <- c("#bcd7e5","#a9cadc","#8ab5cd","#75a5c2","#598caf","2e6e9e")
  paired <- c("#9e2f50","#ff7f8a","#3a70af","#99c6fb","#c85f04","#f29d53","#27757b","2bbbbf","#410057","#f3dee3")
  pal_out <- switch(palette,
                    main = main,
                    greys = greys,
                    reds = reds,
                    blues = blues,
                    paired = paired)
  if(length(pal_out) == 0){
    stop("Palette not found")
  }
  return(pal_out)
}
