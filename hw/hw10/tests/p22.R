library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p22
  points: 1
name: p22

"

test_that("p22", {
  expect_true(all.equal(p22, 0.004012052, tol = 0.001))
  print("Checking: value of test statistic")
})
