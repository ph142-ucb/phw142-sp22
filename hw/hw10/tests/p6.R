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
  expect_true(all.equal(p6[1], 0.1291619, tol = 0.001))
  print("Checking: value of lowerbound")
})

test_that("p6b", {
  expect_true(all.equal(p6[2], 0.1473842, tol = 0.001))
  print("Checking: value of upperbound")
})
