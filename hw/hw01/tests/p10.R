library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p10a
  points: 0.25
- hidden: false
  name: p10b
  points: 0.25
- hidden: false
  name: p10c
  points: 0.25
- hidden: false
  name: p10d
  points: 0.25
name: p10

"

test_that("p10a", {
  expect_true(is.data.frame(sleep_time))
  print("p10a: Checking sleep_time is a dataframe")
})

test_that("p10b", {
  expect_true(ncol(sleep_time) == 11)
  print("p10b: Checking sleep_time has 11 columns")
})

test_that("p10c", {
  expect_true(nrow(sleep_time) == 83)
  print("p10c: Checking sleep_time has 83 rows")
})

test_that("p10d", {
  expect_true(sleep_time$sleep_total[1] == 1.9)
  print("p10c: Checking sleep_total is in ascending order")
})
