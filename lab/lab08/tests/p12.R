library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p12a
  points: 0.5
- hidden: false
  name: p12b
  points: 0.5
name: p12

"

test_that("p12a", {
  expect_true(p12 > -0.01 & p12 < 1)
  print("Checking: range of the p-value")
})

test_that("p12b", {
  expect_true(all.equal(p12, 0.00, .01))
  print("Checking: value of the p-value")
})
