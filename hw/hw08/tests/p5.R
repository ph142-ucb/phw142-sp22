library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p5a
  points: 1
name: p5

"

test_that("p5a", {
  expect_true(all.equal(mean_diff, 0.56, tol = 0.01))
  print("Checking: Mean difference is correct")
})
