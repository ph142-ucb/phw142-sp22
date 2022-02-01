library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p4a
  points: 0.5
- hidden: false
  name: p4b
  points: 0.5
name: p4

"

test_that("p4a", {
  expect_true(is.numeric(p4))
  print("Checking: p4 is a number")
})

test_that("p4b", {
  expect_true(p4 == 0)
  print("Checking: correct value of p4")
})
