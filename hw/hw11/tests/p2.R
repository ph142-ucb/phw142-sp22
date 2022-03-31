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
  expect_true(all.equal(full_pay, 105.75, tol = 0.01))
  print("Checking: full pay value")
})

test_that("p2b", {
  expect_true(all.equal(partial_pay, 36.00, tol = 0.01))
  print("Checking: partial pay value")
})

test_that("p2c", {
  expect_true(all.equal(no_pay, 83.25, tol = 0.01))
  print("Checking: no pay value")
})
