library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p14a
  points: 0.25
- hidden: false
  name: p14b
  points: 0.25
- hidden: false
  name: p14c
  points: 0.25
- hidden: false
  name: p14d
  points: 0.25
name: p14

"

test_that("p14a", {
  expect_true("aov" %in% class(p14))
  print("Checking: aov function used")
})

test_that("p14b", {
  expect_true(p14$terms[[2]] == "bpxsy1")
  print("Checking: formula syntax")
})

test_that("p14c", {
  expect_true(p14$terms[[3]] == "bmicat")
  print("Checking: formula syntax")
})

test_that("p14d", {
  expect_true(all.equal(unname(p14$coefficients[2]), -2.088294, tol = 0.001))
  print("Checking: values")
})
