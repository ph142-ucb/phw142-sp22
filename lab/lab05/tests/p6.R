library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p6a
  points: 0.3333333333333333
- hidden: false
  name: p6b
  points: 0.3333333333333333
- hidden: false
  name: p6c
  points: 0.3333333333333333
name: p6

"

test_that("p6a", {
  expect_true(class(p6) == "numeric")
  print("Checking: p6 is numeric")
  
})

test_that("p6b", {
  expect_true(expect_true(p6 > 0 & p6 < 1))
  print("Checking: p6 is a value between 0 and 1")
  
})

test_that("p6c", {
  expect_true(all.equal(p6, 0.015625, tol = .01))
  print("Checking: p6 is the correct probability")
  
})
