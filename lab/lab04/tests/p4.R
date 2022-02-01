library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p4a
  points: 0.25
- hidden: false
  name: p4b
  points: 0.25
- hidden: false
  name: p4c
  points: 0.25
- hidden: false
  name: p4d
  points: 0.25
name: p4

"

test_that("p4a", {
  expect_true(is.numeric(p4))
  print("Checking: p4 is a number")
})

test_that("p4b", {
  expect_true(p4 > 1)
  print("Checking: Converted to percent")
})

test_that("p4c", {
  expect_true(round(p4, 1) == p4)
  print("Checking: rounded to 1 decimal place")
})

test_that("p4d", {
  expect_true(p4 == 27.9)
  print("Checking: correct value")
})
