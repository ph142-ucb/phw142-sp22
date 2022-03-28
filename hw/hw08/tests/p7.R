library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p7a
  points: 0.5
- hidden: false
  name: p7b
  points: 0.5
name: p7

"

test_that("p7a", {
  expect_true(all.equal(CI[1], -0.378, tol = 0.01))
  print("Checking: Lowerbound is correct")
})

test_that("p7b", {
  expect_true(all.equal(CI[2], 1.498, tol = 0.01))
  print("Checking: Upperbound is correct")
})
