library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p15a
  points: 0.3333333333333333
- hidden: false
  name: p15b
  points: 0.3333333333333333
- hidden: false
  name: p15c
  points: 0.3333333333333333
name: p15

"

test_that("p15a", {
  expect_true(is.numeric(p15))
  print("Checking: p15 is a number")
})

test_that("p15b", {
  expect_true(round(p15, 1) == p15)
  print("Checking: rounded to one decimal")
})

test_that("p15c", {
  expect_true(all.equal(p15, 28.2, tol = 0.1))
  print("Checking: value of p15")
})
