library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p2a
  points: 0.6666666666666666
- hidden: false
  name: p2b
  points: 0.6666666666666666
- hidden: false
  name: p2c
  points: 0.6666666666666666
name: p2

"

test_that("p2a", {
  expect_true(is.data.frame(sleep_small))
  print("p2a: Checking sleep_small is a dataframe")
})

test_that("p2b", {
  expect_true(ncol(sleep_small) == 3)
  print("p2b: Checking sleep_small has 3 columns")
})

test_that("p2c", {
  expect_true(all(names(sleep_small) == c("awake", "brainwt", "bodywt")))
  print("p2c: Checking sleep_small has columns 'awake', 'brainwt', and 'bodywt'")
})
