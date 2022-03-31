library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p16a
  points: 1
name: p16

"

test_that("p16a", {
  expect_true(all.equal(p16, 0.6381187, tol = 0.01))
  print("Checking: Correct correlation coefficient")
})
