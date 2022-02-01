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
  expect_true(is.vector(p5))
  print("Checking: p5 is a vector")
})

test_that("p5b", {
  expect_true(typeof(p5) == "character")
  print("Checking: p5 is a character vector")
})

test_that("p5c", {
  expect_true('bmi' %in% p5 && 'charges' %in% p5)
  print("Checking: variables in p5")
})
