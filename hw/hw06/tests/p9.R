library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p9a
  points: 0.5
- hidden: false
  name: p9b
  points: 0.5
name: p9

"

test_that("p9a", {
  expect_true(sampling_dist_sd >= 0 & sampling_dist_sd <= 1)
  print("Checking: range of sampling_dist_sd")
})

test_that("p9b", {
  expect_true(all.equal(sampling_dist_sd, 0.025, tol = 0.001))
  print("Checking: value of sampling_dist_sd")
})
