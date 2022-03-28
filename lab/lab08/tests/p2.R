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
  expect_true(pvalue_deeks > 0 & pvalue_deeks < 1)
  print("Checking: range of pvalue_deeks")
})

test_that("p2b", {
  expect_true(all.equal(pvalue_deeks, 0.21, 0.001))
  print("Checking: value of pvalue_deeks")
})
