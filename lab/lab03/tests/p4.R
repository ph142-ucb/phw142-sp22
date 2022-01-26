library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p4a
  points: 0.16666666666666666
- hidden: false
  name: p4b
  points: 0.16666666666666666
- hidden: false
  name: p4c
  points: 0.16666666666666666
- hidden: false
  name: p4d
  points: 0.16666666666666666
- hidden: false
  name: p4e
  points: 0.16666666666666666
- hidden: false
  name: p4f
  points: 0.16666666666666666
name: p4

"

test_that("p4a", {
  expect_true("ggplot" %in% class(p4))
  print("Checking: p4 is a ggplot")
})

test_that("p4b", {
  expect_true(identical(p4$data, CS_data_log))
  print("Checking: Using CS_data_log")
})

test_that("p4c", {
  expect_true(rlang::quo_get_expr(p4$mapping$x) == "log_GDP")
  print("Checking: log_GDP is on the x-axis")
})

test_that("p4d", {
  expect_true(rlang::quo_get_expr(p4$mapping$y) == "log_CS")
  print("Checking: log_CS is on the y-axis")
})

test_that("p4e", {
  expect_true("GeomPoint" %in% class(p4$layers[[1]]$geom))
  print("Checking: made a scatterplot")
})

test_that("p4f", {
  expect_true("GeomSmooth" %in% class(p4$layers[[2]]$geom))
  print("Checking: added a smooth line")
})
