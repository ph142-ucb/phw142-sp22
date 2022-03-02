library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p21a
  points: 1
name: p21

"

test_that("p21a", {
  expect_true(all.equal(p21, ppois(q = 12, lambda = 5.7, lower.tail = F), tol = 0.01))
  print("Checking: Probability is correct")
  
})
