library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p4a
  points: 0.5
- hidden: false
  name: p4b
  points: 0.5
name: p4

"

test_that("p4a", {
  expect_true(nrow(deeks_wide) == 71, 
              ncol(deeks_wide) == 4)
  print("Checking: Added another column to the deeks_wide dataset")
})

test_that("p4b", {
  expect_true(deeks_wide[1,4] == 223)
  print("Checking: `diff` column is calculated correctly")
})
