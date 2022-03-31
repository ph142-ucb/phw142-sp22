library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p3
  points: 1
name: p3

"

test_that("p3", {
  expect_true(p3 == "Too low")
  print("Checking: correct selected choice")
})
