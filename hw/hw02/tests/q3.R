library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p3a
  points: 1
name: q3

"

test_that("p3a", {
  expect_true(p3 == 'larger than')
  print("Checking: chose the correct selection")
  
})
