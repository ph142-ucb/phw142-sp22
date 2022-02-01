library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p21a
  points: 0.5
- hidden: false
  name: p21b
  points: 0.5
name: p21

"

test_that("p21a", {
  expect_true(is.numeric(insure_model_r2))
  print("Checking: insure_model_r2 is a number")
})

test_that("p21b", {
  expect_true(all.equal(insure_model_r2, 0.449261, tol = 0.01))
  print("Checking: correct value of insure_model_r2")
})
