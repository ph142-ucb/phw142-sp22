library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p10a
  points: 0
- hidden: false
  name: p10b
  points: 0
name: p10

"

test_that("p10a", {
  expect_true(all.equal(large_sample_ci[1], 0.2150, tol = 0.01))
  print("Checking: Lower bound is correct")
  
})

test_that("p10b", {
  expect_true(all.equal(large_sample_ci[2], 0.5218, tol = 0.01))
  print("Checking: Upper bound is correct")
  
})
