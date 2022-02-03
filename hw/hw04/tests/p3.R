library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p3a
  points: 0.6666666666666666
- hidden: false
  name: p3b
  points: 0.6666666666666666
- hidden: false
  name: p3c
  points: 0.6666666666666666
name: p3

"

test_that("p3a", {
  expect_true(is.data.frame(output_01))
  print("Checking: output_01 is a dataframe")
})

test_that("p3b", {
  expect_true(ncol(output_01) == 2)
  print("Checking: output_01 has two columns")
})

test_that("p3c", {
  expect_true(nrow(output_01) == 1)
  print("Checking: output_01 has 1 row")
})
