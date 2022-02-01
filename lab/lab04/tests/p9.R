library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p9a
  points: 0.3333333333333333
- hidden: false
  name: p9b
  points: 0.3333333333333333
- hidden: false
  name: p9c
  points: 0.3333333333333333
name: p9

"

test_that("p9a", {
  expect_true("numeric" %in% class(p9))
  print("Checking: p9 is a numeric vector")
})

test_that("p9b", {
  expect_true(p9[1] == 17)
  print("Checking: P(D|A') is the correct value")
})

test_that("p9c", {
  expect_true(p9[2] == 39)
  print("Checking: P(D|A) is the correct value")
})
