library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p12
  points: 1
name: p12

"

test_that("p12", {
  expect_true(all.equal(p12, 0.1579393, tol = 0.001))
  print("Checking: value of p-value")
})
