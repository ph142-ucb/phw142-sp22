library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p3a
  points: 0.3333333333333333
- hidden: false
  name: p3b
  points: 0.3333333333333333
- hidden: false
  name: p3c
  points: 0.3333333333333333
name: p3

"

test_that("p3a", {
  expect_true(is.vector(p3))
  print("Checking: p3 is a vector")
})

test_that("p3b", {
  expect_true(typeof(p3) == "character")
  print("Checking: p3 is a character vector")
})

test_that("p3c", {
  expect_true('sex' %in% p3 && 'smoker' %in% p3 && 'region' %in% p3)
  print("Checking: variables in p3")
})
