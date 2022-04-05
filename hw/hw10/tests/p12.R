library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p12
  points: 1
name: p12

"

test_that("p12", {
  expect_true(all.equal(p12, -9.239275, tol = 0.001))
  print("Checking: value of test statistic")
})
