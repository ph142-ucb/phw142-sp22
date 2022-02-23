library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p7a
  points: 0.5
- hidden: false
  name: p7b
  points: 0.5
name: p7

"

test_that("p7a", {
  expect_true(between(p7, 0, 1))
  print("Checking: p7 is a value between 0 and 1")
})

test_that("p7b", {
  expect_true(all.equal(p7, dbinom(x = 5, size = 8, prob = 0.3), tol = 0.1))
  print("Checking: p7 is the correct probability")
})
