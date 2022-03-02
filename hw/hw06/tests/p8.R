library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p8a
  points: 0.5
- hidden: false
  name: p8b
  points: 0.5
name: p8

"

test_that("p8a", {
  expect_true(sampling_dist_mean >= 0 & sampling_dist_mean <= 1)
  print("Checking: range of sampling_dist_mean")
})

test_that("p8b", {
  expect_true(all.equal(sampling_dist_mean, 0.53, tol = 0.01))
  print("Checking: value of sampling_dist_mean")
})
