library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p3a
  points: 0.5
- hidden: false
  name: p3b
  points: 0.5
name: p3

"

test_that("p3a", {
  expect_true(p_value_using_code < 1 & p_value_using_code > 0)
  print("Checking: range of p-value")
})

test_that("p3b", {
  expect_true(all.equal(p_value_using_code, 0.0017, tol = 0.0001))
  print("Checking: value of p-value")
})
