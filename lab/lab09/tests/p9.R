library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p9a
  points: 0.5
- hidden: false
  name: p9b
  points: 0.5
name: p9

"

test_that("p9a", {
  expect_true(p_value < 1 & p_value > 0)
  print("Checking: range of p-value")
})

test_that("p9b", {
  expect_true(all.equal(p_value, 0.8174, tol = 0.001))
  print("Checking: value of p-value")
})
