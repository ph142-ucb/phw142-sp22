library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p2a
  points: 1
name: q2

"

test_that("p2a", {
  expect_true(p2 == 'skewed right')
  print("Checking: chose the correct selection")
})
