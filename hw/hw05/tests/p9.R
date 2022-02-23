library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p9a
  points: 0.5
- hidden: false
  name: p9b
  points: 0.5
name: p9

"

test_that("p9a", {
  expect_true(between(p9, 0, 1))
  print("Checking: p9 is a value between 0 and 1")
})

test_that("p9b", {
  expect_true(all.equal(p9, 1 - pbinom(q = 5, size = 8, prob = 0.3), tol = 0.1))
  print("Checking: p9 is the correct probability")
})
