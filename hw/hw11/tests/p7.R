library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p7
  points: 1
name: p7

"

test_that("p7", {
  expect_true(conclusion == "against null")
  print("Checking: selection")
})
