library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p10
  points: 2
name: p10

"

test_that("p10", {
  expect_true(p10 == "not independent")
  print("Checking: p10 selection")
})
