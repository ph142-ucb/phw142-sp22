library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p10a
  points: 1
name: p10

"

test_that("p10a", {
  expect_true(all.equal(p_value_10, 0.000158235, tol = 0.01))
  print("Checking: p-value is correct")
})
