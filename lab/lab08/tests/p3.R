library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p3a
  points: 1
name: p3

"

test_that("p3a", {
  expect_true(nrow(deeks_wide) == 71, 
              ncol(deeks_wide) == 3)
  print("Checking: deeks_wide is in wide format")
})
