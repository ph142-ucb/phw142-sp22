library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p6a
  points: 0.5
- hidden: false
  name: p6b
  points: 0.5
name: p6

"

test_that("p6a", {
  expect_true(between(p6, 0, 1))
  print("Checking: p6 is a value between 0 and 1")
})

test_that("p6b", {
  expect_true(all.equal(p6, 0.04667544, tol = 0.01))
  print("Checking: p6 is the correct probability")
})
