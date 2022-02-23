library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p5a
  points: 0.3333333333333333
- hidden: false
  name: p5b
  points: 0.3333333333333333
- hidden: false
  name: p5c
  points: 0.3333333333333333
name: p5

"

test_that("p5a", {
  expect_true(class(p5) == "numeric")
  print("Checking: p5 is numeric")
  
})

test_that("p5b", {
  expect_true(p5 > 0 & p5 < 1)
  print("Checking: p5 is a value between 0 and 1")
  
})

test_that("p5c", {
  expect_true(all.equal(p5, .25, tol = .01))
  print("Checking: p5 is the correct probability")
  
})
