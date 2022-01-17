library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p8a
  points: 0.6666666666666666
- hidden: false
  name: p8b
  points: 0.6666666666666666
- hidden: false
  name: p8c
  points: 0.6666666666666666
name: p8

"

test_that("p8a", {
  expect_true(is.data.frame(sleep_mammals))
  print("p8a: Checking sleep_mammals is a dataframe")
})

test_that("p8b", {
  expect_true(ncol(sleep_mammals) == 11)
  print("p8b: Checking sleep_mammals has 11 columns")
})

test_that("p8c", {
  expect_true(nrow(sleep_mammals) == 3)
  print("p8c: Checking sleep_mammals has 3 rows")
})
