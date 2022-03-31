library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p12a
  points: 0
- hidden: false
  name: p12b
  points: 0
name: p12

"

test_that("p12a", {
  expect_true(all.equal(plus_4_ci[1], 0.2341, tol = 0.01))
  print("Checking: Lower bound is correct")
  
})

test_that("p12b", {
  expect_true(all.equal(plus_4_ci[2], 0.5278, tol = 0.01))
  print("Checking: Upper bound is correct")
  
})
