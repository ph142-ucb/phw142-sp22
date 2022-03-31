library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p13a
  points: 0.5
- hidden: false
  name: p13b
  points: 0.5
name: p13

"

test_that("p13a", {
  expect_true(p_value_p13 < 1 & p_value_p13 > -0.1)
  print("Checking: range of p-value")
})

test_that("p13b", {
  expect_true(all.equal(p_value_p13, 0.00, tol = 0.0001))
  print("Checking: p-value to 2 decimal places")
})
