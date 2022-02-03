library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p8a
  points: 0.6666666666666666
- hidden: false
  name: p8b
  points: 0.6666666666666666
- hidden: false
  name: p8c
  points: 0.6666666666666666
name: p8

"

test_that("p8a", {
  expect_true("numeric" %in% class(p8))
  print("Checking: p8 is  a numeric vector")
})

test_that("p8b", {
  expect_true(length(p8) == 2)
  print("Checking: p8 has two values")
})

test_that("p8c", {
  expect_true(all.equal(p8[1], 0.34, tol = 0.1) & all.equal(p8[2], 1.09, tol = 0.1))
  print("Checking: values of p8")
})
