library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p10a
  points: 0.5
- hidden: false
  name: p10b
  points: 0.5
name: p10

"

test_that("p10a", {
  expect_true(is.data.frame(insure_subset))
  print("Checking: insure_subset is a dataframe")
})

test_that("p10b", {
  expect_true(nrow(insure_subset) == 55)
  print("Checking: both filters were applied")
})
