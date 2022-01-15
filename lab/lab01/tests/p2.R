library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p2a
  points: 0
- hidden: false
  name: p2b
  points: 0
name: p2

"

test_that("p2a", {
  expect_true(is.numeric(p2))
  print("p2a: Checking p2 is a numeric")
})

test_that("p2b", {
  expect_true(p2 == 5)
  print("p2b: Checking p2 equals 5")
})
