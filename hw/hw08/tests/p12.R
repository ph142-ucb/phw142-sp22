library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p12a
  points: 0.5
- hidden: false
  name: p12b
  points: 0.5
name: p12

"

test_that("p12a", {
  expect_true(all.equal(CI_12[1], 4.306, tol = 0.01))
  print("Checking: Lowerbound is correct")
})

test_that("p12b", {
  expect_true(all.equal(CI_12[2], 4.825, tol = 0.01))
  print("Checking: Upperbound is correct")
})
