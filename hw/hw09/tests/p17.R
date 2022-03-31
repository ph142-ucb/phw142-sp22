library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p17a
  points: 1
name: p17

"

test_that("p17a", {
  expect_true(all.equal(p17, 0.4071955, tol = 0.01))
  print("Checking: Correct r-squared value")
})

