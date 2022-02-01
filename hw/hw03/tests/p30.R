library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p30a
  points: 0.5
- hidden: false
  name: p30b
  points: 0.5
name: p30

"

test_that("p30a", {
  expect_true(is.numeric(p30))
  print("Checking: p30 is a number")
})

test_that("p30b", {
  expect_true(all.equal(p30, 17683.7, tol = 0.1))
  print("Checking: correct value of p30")
})
