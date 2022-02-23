library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p19a
  points: 0.5
- hidden: false
  name: p19b
  points: 0.5
name: p19

"

test_that("p19a", {
  expect_true(all.equal(p19[1], qnorm(0.25, mean = 3350, sd = 440), tol = 0.01)) 
  print("Checking: first value of p19 is correct")
})

test_that("p19b", {
  expect_true(all.equal(p19[2], qnorm(0.75, mean = 3350, sd = 440), tol = 0.01)) 
  print("Checking: second value of p19 is correct")
})
