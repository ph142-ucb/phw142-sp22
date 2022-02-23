library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p7a
  points: 0.3333333333333333
- hidden: false
  name: p7b
  points: 0.3333333333333333
- hidden: false
  name: p7c
  points: 0.3333333333333333
name: p7

"

test_that("p7a", {
  expect_true(class(p7) == "numeric")
  print("Checking: p7 is numeric")
})

test_that("p7b", {
  expect_true(expect_true(p7 > 0 & p7 < 1))
  print("Checking: p7b is a value between 0 and 1")
})

test_that("p7c", {
  expect_true(all.equal(p7, 0.140625, tol = 0.01))
  print("Checking: p7 is the correct probability")
})
