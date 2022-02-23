library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p11a
  points: 0.3333333333333333
- hidden: false
  name: p11b
  points: 0.3333333333333333
- hidden: false
  name: p11c
  points: 0.3333333333333333
name: p11

"

test_that("p11a", {
  expect_true(class(p11) == "numeric")
  print("Checking: p11 is numeric")
})

test_that("p11b", {
  expect_true(expect_true(p11 > 0 & p11 < 1))
  print("Checking: p11 is a value between 0 and 1")
})

test_that("p11c", {
  expect_true(all.equal(p11, .6270, tol = 0.01))
  print("Checking: p11 is the correct probability")
})
