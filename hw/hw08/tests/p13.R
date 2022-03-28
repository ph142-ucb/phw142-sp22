library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p13a
  points: 1
name: p13

"

test_that("p13a", {
  expect_true(p13 == "b")
  print("Checking: p13 is the correct confidence interval")
})
