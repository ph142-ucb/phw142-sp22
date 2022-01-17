library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p7a
  points: 0.3333333333333333
- hidden: false
  name: p7b
  points: 0.3333333333333333
- hidden: false
  name: p7c
  points: 0.3333333333333333
name: p7

"

test_that("p7a", {
  expect_true(is.data.frame(sleep_over16))
  print("p7a: Checking sleep_over16 is a dataframe")
})

test_that("p7b", {
  expect_true(ncol(sleep_over16) == 11)
  print("p7b: Checking sleep_over16 has 11 columns")
})

test_that("p7c", {
  expect_true(nrow(sleep_over16) == 8)
  print("p7c: Checking sleep_over16 has 8 rows")
})
