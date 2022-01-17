library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p11a
  points: 0.25
- hidden: false
  name: p11b
  points: 0.25
- hidden: false
  name: p11c
  points: 0.25
- hidden: false
  name: p11d
  points: 0.25
name: p11

"

test_that("p11a", {
  expect_true(is.data.frame(sleep_rev))
  print("p11a: Checking sleep_rev is a dataframe")
})

test_that("p11b", {
  expect_true(ncol(sleep_rev) == 11)
  print("p11b: Checking sleep_rev has 11 columns")
})

test_that("p11c", {
  expect_true(nrow(sleep_rev) == 83)
  print("p11c: Checking sleep_rev has 83 rows")
})

test_that("p11d", {
  expect_true(sleep_rev$sleep_total[1] == 19.9)
  print("p11d: Checking sleep_total is in descending order")
})
