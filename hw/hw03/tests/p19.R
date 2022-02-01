library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p19a
  points: 0.5
- hidden: false
  name: p19b
  points: 0.5
- hidden: false
  name: p19c
  points: 0.5
- hidden: false
  name: p19d
  points: 0.5
name: p19

"

test_that("p19a", {
  expect_true("insure_smaller_subset" == insure_better_model$call$data)
  print("Checking: using insure_smaller_subset")
})

test_that("p19b", {
  expect_true("age" %in% names(insure_better_model$model))
  print("Checking: age is in the model")
})

test_that("p19c", {
  expect_true("charges" %in% names(insure_better_model$model))
  print("Checking: charges is in the model")
})

test_that("p19d", {
  expect_true(all.equal(insure_better_model$coefficients[[2]], 266.8725, tol = 0.01))
  print("Checking: slope value")
})
