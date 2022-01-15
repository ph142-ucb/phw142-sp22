library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p3a
  points: 0
- hidden: false
  name: p3b
  points: 0
name: p3

"

test_that("p3a", {
  expect_true(is.numeric(p3))
  print("p3a: Checking p3 is a numeric")
})

test_that("p3b", {
  expect_true(p3 == 5)
  print("p3b: Checking p3 equals 5")
})
