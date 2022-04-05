library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p11a
  points: 0
- hidden: false
  name: p11b
  points: 0
name: p11

"

test_that("p11a", {
  expect_true(all.equal(wilson_score_ci[1], 0.2229, tol = 0.01))
  print("Checking: Lower bound is correct")
  
})

test_that("p11b", {
  expect_true(all.equal(wilson_score_ci[2], 0.5400, tol = 0.01))
  print("Checking: Upper bound is correct")
  
})
