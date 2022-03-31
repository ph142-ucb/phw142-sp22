library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p13a
  points: 0.3333333333333333
- hidden: false
  name: p13b
  points: 0.3333333333333333
- hidden: false
  name: p13c
  points: 0.3333333333333333
name: p13

"

test_that("p13a", {
  expect_true("data.frame" %in% class(p13))
  print("Checking: dataframe created")
})

test_that("p13b", {
  expect_true(nrow(p13) == 5)
  print("Checking: group_by used correctly")
})

test_that("p13c", {
  expect_true(ncol(p13) == 3)
  print("Checking: summarize - columns for mean and sd created")
})
