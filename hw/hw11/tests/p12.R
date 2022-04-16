library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p12
  points: 1
name: p12

"

test_that("p12", {
  expect_true(all.equal(chi_sq_p12, 40.55, tol = 0.01))
  print("Checking: test statistic to 2 decimal places")
})
