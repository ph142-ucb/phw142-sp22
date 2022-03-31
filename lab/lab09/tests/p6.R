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
  expect_true("htest" %in% class(p6))
  print("Checking: t.test function used")
})

test_that("p6b", {
  expect_true(all.equal(unname(p6$statistic), 0.2309, 0.001))
  print("Checking: value of test statistic to at least 3 decimals")
})
