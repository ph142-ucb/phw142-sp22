library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p8a
  points: 0.25
- hidden: false
  name: p8b
  points: 0.25
- hidden: false
  name: p8c
  points: 0.25
- hidden: false
  name: p8d
  points: 0.25
name: p8

"

test_that("p8a", {
  expect_true("ggplot" %in% class(p8))
  print("Checking: p8 is a ggplot")
  
})

test_that("p8b", {
  expect_true(identical(p8$data, anorexia_diff))
  print("Checking: Using `anorexia_diff` data")
  
})

test_that("p8c", {
  expect_true(quo_get_expr(p8$mapping$sample) == "diff")
  print("Checking: Looking at the distribution of `diff`")
  
})

test_that("p8d", {
  expect_true("StatQqLine" %in% class(p8$layers[[2]]$stat))
  print("Checking: Using a QQplot")
  
})
