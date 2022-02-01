library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p6a
  points: 0.3333333333333333
- hidden: false
  name: p6b
  points: 0.3333333333333333
- hidden: false
  name: p6c
  points: 0.3333333333333333
name: p6

"

test_that("p6a", {
  expect_true(is.vector(p6))
  print("Checking: p6 is a vector")
})

test_that("p6b", {
  expect_true(typeof(p6) == "character")
  print("Checking: p6 is a character vector")
})

test_that("p6c", {
  expect_true('children' %in% p6)
  print("Checking: variables in p6")
})
