library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p3a
  points: 0.5
- hidden: false
  name: p3b
  points: 0.5
name: p3

"

test_that("p3a", {
  expect_true(all.equal(p3[1], 0.7215, tol = 0.01))
  print("Checking: correct lower bound")
  
})

test_that("p3b", {
  expect_true(all.equal(p3[2], 1.4617, tol = 0.01))
  print("Checking: correct upper bound")
  
})
