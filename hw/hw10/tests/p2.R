library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p2
  points: 1
name: p2

"

test_that("p2", {
  expect_true(all.equal(p2, 514, tol = 0.00001))
  print("Checking: calculated correct sample size")
})
