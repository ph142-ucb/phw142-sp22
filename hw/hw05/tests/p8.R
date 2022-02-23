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
  expect_true(between(p8, 0, 1))
  print("Checking: p8 is a value between 0 and 1")
})

test_that("p8b", {
  expect_true(all.equal(p8, 0.01129221, tol = 0.1))
  print("Checking: p8 is the correct probability")
})
