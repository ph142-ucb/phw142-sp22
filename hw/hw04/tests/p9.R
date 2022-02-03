library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p9a
  points: 0.6666666666666666
- hidden: false
  name: p9b
  points: 0.6666666666666666
- hidden: false
  name: p9c
  points: 0.6666666666666666
name: p9

"

test_that("p9a", {
  expect_true(is.numeric(p9))
  print("Checking: p9 is a number")
})

test_that("p9b", {
  expect_true(round(p9, 2) == p9)
  print("Checking: rounded to two decimals")
})

test_that("p9c", {
  expect_true(all.equal(p9, 0.09, tol = 0.1))
  print("Checking: value of p9")
})
