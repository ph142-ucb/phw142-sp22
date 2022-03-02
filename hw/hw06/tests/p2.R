library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p2a
  points: 0.5
- hidden: false
  name: p2b
  points: 0.5
name: p2

"

test_that("p2a", {
  expect_true(probability > 0 & probability < 1)
  print("Checking: range of probability")
})

test_that("p2b", {
  expect_true(all.equal(probability, 0.558, tol = 0.001))
  print("Checking: value of probability")
})
