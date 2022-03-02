library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p18a
  points: 0.5
- hidden: false
  name: p18b
  points: 0.5
name: p18

"

test_that("p18a", {
  expect_true(all.equal(p18[1], 5.7, tol = 0.01))
  print("Checking: Mean is correct")
  
})

test_that("p18b", {
  expect_true(all.equal(p18[2], sqrt(5.7), tol = 0.01))
  print("Checking: Standard deviation is correct")
  
})
