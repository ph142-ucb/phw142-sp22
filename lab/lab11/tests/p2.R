library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p2a
  points: 0.5
- hidden: false
  name: p2b
  points: 0.5
name: p2

"

test_that("p2a", {
  expect_true(p_value < 1 & p_value > 0)
  print("Checking: range of p-value")
})

test_that("p2b", {
  expect_true(all.equal(p_value, 0.0017))
  print("Checking: value of p-value")
})
