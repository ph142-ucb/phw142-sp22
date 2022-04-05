library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p13a
  points: 0
- hidden: false
  name: p13b
  points: 0
name: p13

"

test_that("p13a", {
  expect_true(all.equal(exact_method_ci[1], 0.2181, tol = 0.01))
  print("Checking: Lower bound is correct")
  
})

test_that("p13b", {
  expect_true(all.equal(exact_method_ci[2], 0.5401, tol = 0.01))
  print("Checking: Upper bound is correct")
  
})
