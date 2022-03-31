library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p5a
  points: 0.5
- hidden: false
  name: p5b
  points: 0.5
name: p5

"

test_that("p5a", {
  expect_true(p_value_chisq < 1 & p_value_chisq > 0)
  print("Checking: range of p-value")
})

test_that("p5b", {
  expect_true(all.equal(p_value_chisq, 0.0017, tol = 0.0001))
  print("Checking: value of p-value")
})
