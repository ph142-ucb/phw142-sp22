library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p1a
  points: 0.2
- hidden: false
  name: p1b
  points: 0.2
- hidden: false
  name: p1c
  points: 0.2
- hidden: false
  name: p1d
  points: 0.2
- hidden: false
  name: p1e
  points: 0.2
name: p1

"

test_that("p1a", {
  expect_true("ggplot" %in% class(p1))
  print("Checking: p1 is a ggplot")
})

test_that("p1b", {
  expect_true(identical(p1$data, CS_data))
  print("Checking: Using CS_data")
})

test_that("p1c", {
  expect_true(rlang::quo_get_expr(p1$mapping$x) == "GDP_2006")
  print("Checking: GDP_2006 is on the x-axis")
})

test_that("p1d", {
  expect_true(rlang::quo_get_expr(p1$mapping$y) == "CS_rate_100")
  print("Checking: CS_rate_100 is on the y-axis")
})

test_that("p1e", {
  expect_true("GeomPoint" %in% class(p1$layers[[1]]$geom))
  print("Checking: made a scatterplot")
})
