library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p23a
  points: 0.4
- hidden: false
  name: p23b
  points: 0.4
- hidden: false
  name: p23c
  points: 0.4
- hidden: false
  name: p23d
  points: 0.4
- hidden: false
  name: p23e
  points: 0.4
name: p23

"

test_that("p23a", {
  expect_true(is.data.frame(p23))
  print("Checking: p23 is a dataframe")
})

test_that("p23b", {
  expect_true(nrow(p23) == 1)
  print("Checking: one row in the dataframe")
})

test_that("p23c", {
  expect_true(ncol(p23) == 2)
  print("Checking: two columns in the dataframe")
})

test_that("p23d", {
  expect_true(all.equal(p23$corr[1], 0.6702694, tol = 0.01))
  print("Checking: correct correlation coefficient")
})

test_that("p23e", {
  expect_true(all.equal(p23$corr_sq[1], 0.4492611, tol = 0.01))
  print("Checking: correct correlation squared value")
})
