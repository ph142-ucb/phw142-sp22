library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p8a
  points: 0.5
- hidden: false
  name: p8b
  points: 0.5
name: p8

"

test_that("p8a", {
  expect_true(typeof(p8) == "character")
  print("Checking: a choice was made")
})

test_that("p8b", {
  expect_true(p8 == 'ordinal')
  print("Checking: correct choice was made")
})
