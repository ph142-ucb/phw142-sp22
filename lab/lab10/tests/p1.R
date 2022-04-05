library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p1a
  points: 1
name: p1

"

test_that("p1a", {
  expect_true(all.equal(as.numeric(p1$coefficients[1]), 18.39009, tol = 0.01))
  print("Checking: correct linear model")
  
})
