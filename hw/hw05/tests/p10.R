library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p10a
  points: 0.5
- hidden: false
  name: p10b
  points: 0.5
name: p10

"

test_that("p10a", {
  expect_true(between(p10, 0, 1))
  print("Checking: p10 is a value between 0 and 1")
})

test_that("p10b", {
  expect_true(all.equal(p10, dbinom(x = 6, size = 8, prob = 0.3) + 
  dbinom(x = 7, size = 8, prob = 0.3) + 
  dbinom(x = 8, size = 8, prob = 0.3), tol = 0.1))
  print("Checking: p10 is the correct probability")
})
