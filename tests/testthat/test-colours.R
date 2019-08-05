context("test-colours")

test_that("ft_colour returns expected values", {
  expect_equal(ft_colors("paper"), c(paper = "#FFF1E5"))
  expect_equal(ft_colors("claret"), c(claret = "#990F3D"))
  expect_equal(ft_colors("black-30"), c(`black-30` = "#B3A9A0"))
})

test_that("ft_colors returns the correct length",{
  expect_equal(length(ft_colors("paper","oxford")), 2)
  expect_equal(length(ft_colors("black")), 1)
})

test_that("ft_colors gives warning if color is not found",{
  expect_warning(ft_colors("blah"))
  expect_warning(ft_colors("sky", "not here"))
})

test_that("ft_pal returns a function",{
  expect_is(ft_pal("main"), "function")
})

test_that("ft_pal errors on unknown palette",{
  expect_error(ft_pal("does not exist"), "Palette not found")
})

test_that("palettes are correct length",{
  expect_equal(length(ft_pal("main")(10)), 10)
  expect_equal(length(ft_pal("black")(4)), 4)
})


