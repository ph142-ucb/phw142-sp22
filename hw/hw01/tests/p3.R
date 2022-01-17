library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p3a
  points: 0.3333333333333333
- hidden: false
  name: p3b
  points: 0.3333333333333333
- hidden: false
  name: p3c
  points: 0.3333333333333333
name: p3

"

test_that("p3a", {
  expect_true(is.data.frame(sleep_small_colon))
  print("p3a: Checking sleep_small_colon is a dataframe")
})

test_that("p3b", {
  expect_true(ncol(sleep_small_colon) == 3)
  print("p3b: Checking sleep_small_colon has 3 columns")
})

test_that("p3c", {
  expect_true(all(names(sleep_small_colon) == c("awake", "brainwt", "bodywt")))
print("p3c: Checking sleep_small_colon has columns 'awake', 'brainwt', and 'bodywt'")
})
