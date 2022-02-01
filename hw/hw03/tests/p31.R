library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p31a
  points: 0.5
- hidden: false
  name: p31b
  points: 0.5
name: p31

"

test_that("p31a", {
  expect_true(is.numeric(p31))
  print("Checking: p31 is a number")
})

test_that("p31b", {
  expect_true(all.equal(p31, 36182.1, tol = 0.1))
  print("Checking: correct value of p31")
})
