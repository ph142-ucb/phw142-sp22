library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p12a
  points: 0.5
- hidden: false
  name: p12b
  points: 0.5
- hidden: false
  name: p12c
  points: 0.5
- hidden: false
  name: p12d
  points: 0.5
name: p12

"

test_that("p12a", {
  expect_true(is.data.frame(sleep_time_rev))
  print("p12a: Checking sleep_time_rev is a dataframe")
})

test_that("p12b", {
  expect_true(ncol(sleep_time_rev) == 11)
  print("p12b: Checking sleep_time_rev has 11 columns")
})

test_that("p12c", {
  expect_true(nrow(sleep_time_rev) == 83)
  print("p12c: Checking sleep_time_rev has 83 rows")
})

test_that("p12d", {
  expect_true(sleep_time_rev$sleep_total[1] == 19.4)
  print("p12c: Correct ordering by -vore type and sleep totals")
})
