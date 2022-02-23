library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p25a
  points: 0
- hidden: false
  name: p25b
  points: 0
name: p25

"

test_that("p25a", {
  expect_true(all.equal(p25[1], qnorm(0.25, mean = 2750, sd = 560), tol = 0.01)) 
  print("Checking: first value of p25")
})

test_that("p25b", {
  expect_true(all.equal(p25[2], qnorm(0.75, mean = 2750, sd = 560), tol = 0.01)) 
  print("Checking: second value of p25")
})
