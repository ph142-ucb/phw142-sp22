library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p4
  points: 1
name: p4

"

test_that("p4", {
  expect_true(all.equal(chi_sq, 68.66, tol = 0.01))
  print("Checking: value of chi sq to 2 decimals")
})
