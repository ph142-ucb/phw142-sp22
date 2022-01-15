library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p1a
  points: 1
- hidden: false
  name: p1b
  points: 1
name: p1

"

test_that("p1a", {
  expect_true(is.numeric(p1))
  print("p1a: Checking p1 is a numeric")
})

test_that("p1b", {
  expect_true(p1 == 5)
  print("p1b: Checking p1 equals 5")
})
