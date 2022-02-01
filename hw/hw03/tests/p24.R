library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p24a
  points: 0.4
- hidden: false
  name: p24b
  points: 0.4
- hidden: false
  name: p24c
  points: 0.4
- hidden: false
  name: p24d
  points: 0.4
- hidden: false
  name: p24e
  points: 0.4
name: p24

"

test_that("p24a", {
  expect_true(is.data.frame(p24))
  print("Checking: p24 is a dataframe")
})

test_that("p24b", {
  expect_true(nrow(p24) == 1)
  print("Checking: one row in the dataframe")
})

test_that("p24c", {
  expect_true(ncol(p24) == 2)
  print("Checking: two columns in the dataframe")
})

test_that("p24d", {
  expect_true(all.equal(p24$corr[1], 0.9207411, tol = 0.01))
  print("Checking: correct correlation coefficient")
})

test_that("p24e", {
  expect_true(all.equal(p24$corr_sq[1], 0.8477642, tol = 0.01))
  print("Checking: correct correlation squared value")
})
