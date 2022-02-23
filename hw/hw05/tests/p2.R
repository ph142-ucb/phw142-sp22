library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p2a
  points: 0.5
- hidden: false
  name: p2b
  points: 0.5
name: p2

"

test_that("p2a", {
  expect_true(all.equal(p2[1], pnorm(q = 298, mean = 266, sd = 16), tol = 0.001))
  print("Checking: first value of p2 is correct")
})

test_that("p2b", {
  expect_true(all.equal(p2[2], abs(0.975 - pnorm(q = 298, mean = 266, sd = 16)), tol = 0.001))
  print("Checking: second value of p2 is correct")
})
