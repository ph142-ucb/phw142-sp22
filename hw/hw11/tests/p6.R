library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p6
  points: 1
name: p6

"

test_that("p6", {
  expect_true(all.equal(p_value, 0, tol = 0.01))
  print("Checking: value of p value")
})
