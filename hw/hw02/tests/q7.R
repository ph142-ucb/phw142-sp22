library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p7
  points: 1
name: q7

"

test_that("p7", {
  expect_true(p7 == 'bimodal' | p7 == 'skewed left')
  print("Checking: p7 is one of 2 possible correct choices")
})
