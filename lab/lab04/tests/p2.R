library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p2a
  points: 0.3333333333333333
- hidden: false
  name: p2b
  points: 0.3333333333333333
- hidden: false
  name: p2c
  points: 0.3333333333333333
name: p2

"

test_that("p2a", {
  expect_true(is.numeric(p2))
  print("Checking: p2 is a number")
})

test_that("p2b", {
  expect_true(p2 > 1)
  print("Checking: Converted to percent")
})

test_that("p2c", {
  expect_true(p2 == 50)
  print("Checking: correct value")
})
