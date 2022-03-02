library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p12a
  points: 0.5
- hidden: false
  name: p12b
  points: 0.5
name: p12

"

test_that("p12a", {
  expect_true(between(p12, 0, 1))
  print("Checking: p12 is a value between 0 and 1")
  
})

test_that("p12b", {
  expect_true(all.equal(p12, dbinom(x = 5, size = 20, p = 0.27), tol = 0.01))
  print("Checking: p12 is the correct probability")
  
})
