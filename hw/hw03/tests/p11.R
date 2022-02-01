library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p11a
  points: 0.5
- hidden: false
  name: p11b
  points: 0.5
- hidden: false
  name: p11c
  points: 0.5
- hidden: false
  name: p11d
  points: 0.5
- hidden: false
  name: p11e
  points: 0.5
- hidden: false
  name: p11f
  points: 0.5
name: p11

"

test_that("p11a", {
  expect_true("ggplot" %in% class(p11))
  print("Checking: p11 is a ggplot")
})

test_that("p11b", {
  expect_true(identical(p11$data, insure_subset))
  print("Checking: Using insure_subset")
})

test_that("p11c", {
  expect_true(rlang::quo_get_expr(p11$mapping$x) == "age")
  print("Checking: age is on the x-axis")
})

test_that("p11d", {
  expect_true(rlang::quo_get_expr(p11$mapping$y) == "charges")
  print("Checking: charges is on the y-axis")
})

test_that("p11e", {
  expect_true("GeomPoint" %in% class(p11$layers[[1]]$geom))
  print("Checking: made a scatterplot")
})

test_that("p11f", {
  expect_true(length(p11$labels$title) != 0)
  print("Checking: title added")
})
