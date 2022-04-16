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
  expect_true(variable_type[1] == "explanatory: age group")
  print("Checking: explanatory")
})

test_that("p8b", {
  expect_true(variable_type[2] == "response: HPV status")
  print("Checking: response")
})
