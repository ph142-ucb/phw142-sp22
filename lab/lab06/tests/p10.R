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
  expect_true(between(p10, 10, 11))
  print("Checking: p10 is a value between 10 and 11")
  
})

test_that("p10b", {
  expect_true(all.equal(p10, qnorm(p = .90, mean = 2, sd = 7), tol = 0.01))
  print("Checking: p10 is the correct number of pounds")
  
})
