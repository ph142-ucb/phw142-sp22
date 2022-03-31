library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p17
  points: 1
name: p17

"

test_that("p17", {
  expect_true(all.equal(p17, 0.2465582, tol = 0.001))
  print("Checking: value of estimate")
})
