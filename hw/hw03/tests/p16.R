library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p16a
  points: 0.14285714285714285
- hidden: false
  name: p16b
  points: 0.14285714285714285
- hidden: false
  name: p16c
  points: 0.14285714285714285
- hidden: false
  name: p16d
  points: 0.14285714285714285
- hidden: false
  name: p16e
  points: 0.14285714285714285
- hidden: false
  name: p16f
  points: 0.14285714285714285
- hidden: false
  name: p16g
  points: 0.14285714285714285
name: p16

"

test_that("p16a", {
  expect_true("ggplot" %in% class(p16))
  print("Checking: p16 is a ggplot")
})

test_that("p16b", {
  expect_true(identical(p16$data, insure_subset))
  print("Checking: using insure_subset")
})

test_that("p16c", {
  expect_true(rlang::quo_get_expr(p16$mapping$x) == "age")
  print("Checking: age is on the x-axis")
})

test_that("p16d", {
  expect_true(rlang::quo_get_expr(p16$mapping$y) == "charges")
  print("Checking: charges is on the y-axis")
})

test_that("p16e", {
  expect_true("GeomPoint" %in% class(p16$layers[[1]]$geom))
  print("Checking: made a scatterplot")
})

test_that("p16f", {
  expect_true(length(p16$labels$title) != 0)
  print("Checking: title added")
})

test_that("p16g", {
  expect_true("GeomAbline" %in% class(p16$layers[[2]]$geom) | "GeomSmooth" %in% class(p16$layers[[2]]$geom))
  print("Checking: added a line of best fit")
})
