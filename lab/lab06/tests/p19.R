library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p19a
  points: 1
name: p19

"

test_that("p19a", {
  expect_true(all.equal(p19, dpois(x = 0, lambda = 5.7), tol = 0.01))
  print("Checking: Probability is correct")
  
})
