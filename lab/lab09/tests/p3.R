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
  expect_true("data.frame" %in% class(p3))
  print("Checking: dataframe created")
})

test_that("p3b", {
  expect_true(nrow(p3) == 2)
  print("Checking: group_by used correctly")
})

test_that("p3c", {
  expect_true(ncol(p3) == 3)
  print("Checking: summarize - columns for mean and sd created")
})
