library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p14a
  points: 0.3333333333333333
- hidden: false
  name: p14b
  points: 0.3333333333333333
- hidden: false
  name: p14c
  points: 0.3333333333333333
name: p14

"

test_that("p14a", {
  expect_true(class(p14) == "numeric")
  print("Checking: p14 is a numeric")
})

test_that("p14b", {
  expect_true(expect_true(p14 > 0 & p14 < 1))
  print("Checking: p14 is a value between 0 and 1")
})

test_that("p14c", {
  expect_true(all.equal(p14, .994, tol = 0.01))
  print("Checking: p14 is the correct probability")
})
