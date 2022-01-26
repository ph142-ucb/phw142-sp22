library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p3a
  points: 0.2
- hidden: false
  name: p3b
  points: 0.2
- hidden: false
  name: p3c
  points: 0.2
- hidden: false
  name: p3d
  points: 0.2
- hidden: false
  name: p3e
  points: 0.2
name: p3

"

test_that("p3a", {
  expect_true("ggplot" %in% class(p3))
  print("Checking: p3 is a ggplot")
})

test_that("p3b", {
  expect_true(identical(p3$data, CS_data_log))
  print("Checking: Using CS_data_log")
})

test_that("p3c", {
  expect_true(rlang::quo_get_expr(p3$mapping$x) == "log_GDP")
  print("Checking: log_GDP is on the x-axis")
})

test_that("p3d", {
  expect_true(rlang::quo_get_expr(p3$mapping$y) == "log_CS")
  print("Checking: log_CS is on the y-axis")
})

test_that("p3e", {
  expect_true("GeomPoint" %in% class(p3$layers[[1]]$geom))
  print("Checking: made a scatterplot")
})
