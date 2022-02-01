library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p8a
  points: 0.5
- hidden: false
  name: p8b
  points: 0.5
name: p8

"

test_that("p8a", {
  expect_true("numeric" %in% class(p8))
  print("Checking: p8 is a number")
})

test_that("p8b", {
  expect_true(p8 == 28)
  print("Checking: p8 is rounded to the nearest whole number")
})
