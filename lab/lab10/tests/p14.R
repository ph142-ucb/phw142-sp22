library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p14a
  points: 0
- hidden: false
  name: p14b
  points: 0
- hidden: false
  name: p14c
  points: 0
name: p14

"

test_that("p14a", {
  expect_true("ggplot" %in% class(p14))
  print("Checking: p14 is a ggplot")
  
})

test_that("p14b", {
  expect_true(identical(p14$data, sex_CIs))
  print("Checking: Used sex_CIs dataset")
})

test_that("p14c", {
  expect_true(rlang::quo_get_expr(p14$mapping$x) == "method")
  print("Checking: `method` is on the x-axis")
})
