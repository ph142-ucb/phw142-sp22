library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p28a
  points: 0.25
- hidden: false
  name: p28b
  points: 0.25
- hidden: false
  name: p28c
  points: 0.25
- hidden: false
  name: p28d
  points: 0.25
- hidden: false
  name: p28e
  points: 0.25
- hidden: false
  name: p28f
  points: 0.25
- hidden: false
  name: p28g
  points: 0.25
- hidden: false
  name: p28h
  points: 0.25
- hidden: false
  name: p28i
  points: 0.25
- hidden: false
  name: p28j
  points: 0.25
- hidden: false
  name: p28k
  points: 0.25
- hidden: false
  name: p28l
  points: 0.25
name: p28

"

test_that("p28a", {
  expect_true(class(normal_mod) == "lm")
  print("Checking: normal_mod is a linear model")
})

test_that("p28b", {
  expect_true("age" %in% names(normal_mod$model))
  print("Checking: age is in the normal_mod")
})

test_that("p28c", {
  expect_true("charges" %in% names(normal_mod$model))
  print("Checking: charges is in the normal_mod")
})

test_that("p28d", {
  expect_true(all.equal(normal_mod$coefficients[[2]], 246.1367, tol = 0.01))
  print("Checking: correct slope value in normal_mod")
})

test_that("p28e", {
  expect_true(class(overweight_mod) == "lm")
  print("Checking: overweight_mod is a linear model")
})

test_that("p28f", {
  expect_true("age" %in% names(overweight_mod$model))
  print("Checking: age is in the overweight_mod")
})

test_that("p28g", {
  expect_true("charges" %in% names(overweight_mod$model))
  print("Checking: charges is in the overweight_mod")
})

test_that("p28h", {
  expect_true(all.equal(overweight_mod$coefficients[[2]], 264.1862, tol = 0.01))
  print("Checking: correct slope value in overweight_mod")
})

test_that("p28i", {
  expect_true(class(obese_mod) == "lm")
  print("Checking: obese_mod is a linear model")
})

test_that("p28j", {
  expect_true("age" %in% names(obese_mod$model))
  print("Checking: age is in the obese_mod")
})

test_that("p28k", {
  expect_true("charges" %in% names(obese_mod$model))
  print("Checking: charges is in the obese_mod")
})

test_that("p28l", {
  expect_true(all.equal(obese_mod$coefficients[[2]], 281.1528, tol = 0.01))
  print("Checking: correct slope value in obese_mod")
})
