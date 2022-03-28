library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p6a
  points: 0.5
- hidden: false
  name: p6b
  points: 0.5
name: p6

"

test_that("p6a", {
  expect_true(p6 > 0 & p6 < 1)
  print("Checking: range of the p-value")
})

test_that("p6b", {
  expect_true(all.equal(p6, 0.0033, .0001))
  print("Checking: value of p-value")
})
