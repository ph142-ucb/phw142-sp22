library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p25a
  points: 0.5
- hidden: false
  name: p25b
  points: 0.5
name: p25

"

test_that("p25a", {
  expect_true(is.data.frame(insure_smokers))
  print("Checking: insure_smokers is a dataframe")
})

test_that("p25b", {
  expect_true(nrow(insure_smokers) == 274)
  print("Checking: filtered correctly")
})
