library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p8a
  points: 0.16666666666666666
- hidden: false
  name: p8b
  points: 0.16666666666666666
- hidden: false
  name: p8c
  points: 0.16666666666666666
- hidden: false
  name: p8d
  points: 0.16666666666666666
- hidden: false
  name: p8e
  points: 0.16666666666666666
- hidden: false
  name: p8f
  points: 0.16666666666666666
name: p8

"

test_that("p8a", {
  expect_true("ggplot" %in% class(p8))
  print("Checking: p8 is a ggplot")
})

test_that("p8b", {
  expect_true(identical(p8$data, CS_data_sub))
  print("Checking: Using CS_data_sub")
})

test_that("p8c", {
  expect_true(rlang::quo_get_expr(p8$mapping$x) == "log_GDP")
  print("Checking: log_GDP is on the x-axis")
})

test_that("p8d", {
  expect_true(rlang::quo_get_expr(p8$mapping$y) == "log_CS")
  print("Checking: log_CS is on the y-axis")
})

test_that("p8e", {
  expect_true("GeomPoint" %in% class(p8$layers[[1]]$geom))
  print("Checking: made a scatterplot")
})

test_that("p8f", {
  expect_true("GeomSmooth" %in% class(p8$layers[[2]]$geom))
  print("Checking: added a smooth line")
})
