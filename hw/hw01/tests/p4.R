library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p4a
  points: 0.3333333333333333
- hidden: false
  name: p4b
  points: 0.3333333333333333
- hidden: false
  name: p4c
  points: 0.3333333333333333
name: p4

"

test_that("p4a", {
  expect_true(is.data.frame(sleep_no_vore))
  print("p4a: Checking sleep_small_colon is a dataframe")
})

test_that("p4b", {
  expect_true(ncol(sleep_no_vore) == 10)
  print("p4b: Checking sleep_small_vore has 10 columns")
})

test_that("p4c", {
  expect_true(!("vore" %in% names(sleep_no_vore)))
  print("p4c: Checking sleep_no_vore has no columns with 'vore'")
})
