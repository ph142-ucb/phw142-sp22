library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p5
  points: 1
name: p5

"

test_that("p5", {
  expect_true(largest_contribution == "no pay")
  print("Checking: selection")
})
