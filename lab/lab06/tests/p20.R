library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p20a
  points: 1
name: p20

"

test_that("p20a", {
  expect_true(all.equal(p20, ppois(q = 1, lambda = 5.7, lower.tail = F), tol = 0.01))
  print("Checking: Probability is correct")
  
})
