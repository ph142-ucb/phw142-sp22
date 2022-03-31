library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p21
  points: 1
name: p21

"

test_that("p21", {
  expect_true(all.equal(p21, 2.877213, tol = 0.001))
  print("Checking: value of test statistic")
})
