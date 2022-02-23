library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p30a
  points: 0
- hidden: false
  name: p30b
  points: 0
name: p30

"

test_that("p30a", {
  expect_true(p30 > 0 & p30 < 1)
  print("Checking: range of p30")
})

test_that("p30b", {
  expect_true(all.equal(p30, pnorm(1.77, 0, 1) - pnorm(-2.25, 0, 1), tol = 0.01))
  print("Checking: value of p30")
})
