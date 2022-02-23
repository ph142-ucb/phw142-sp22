library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p2a
  points: 0.3333333333333333
- hidden: false
  name: p2b
  points: 0.3333333333333333
- hidden: false
  name: p2c
  points: 0.3333333333333333
name: p2

"

test_that("p2a", {
  expect_true(class(p2) == "numeric")
  print("Checking: p2 is a number")
  
})

test_that("p2b", {
  expect_true(expect_true(p2 > 0 & p2 < 1))
  print("Checking: p2 is a value between 0 and 1")
  
})

test_that("p2c", {
  expect_true(all.equal(p2, .2989, tol = .01))
  print("Checking: p2 is the correct probability")
  
})
