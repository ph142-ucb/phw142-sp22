library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p14a
  points: 0.25
- hidden: false
  name: p14b
  points: 0.25
- hidden: false
  name: p14c
  points: 0.25
- hidden: false
  name: p14d
  points: 0.25
name: p14

"

test_that("p14a", {
  expect_true(is.data.frame(sleep_bw))
  print("p14a: Checking `sleep_bw` is a dataframe")
})

test_that("p14b", {
  expect_true(ncol(sleep_r_bw) == 13)
  print("p14b: Checking sleep_bw has 13 columns")
})

test_that("p14c", {
  expect_true(nrow(sleep_r_bw) == 83)
  print("p14c: Checking sleep_bw has 83 rows")
})

test_that("p14d", {
  expect_true(all.equal(sleep_bw$bodywt_grams[1], 50000, 0.01))
  print("p14c: Checking bodyweight is in grams")
})
