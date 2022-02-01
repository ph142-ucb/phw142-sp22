library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p2a
  points: 0.5
- hidden: false
  name: p2b
  points: 0.5
name: p2

"

test_that("p2a", {
  expect_true(is.numeric(p2))
  print("Checking: p2 is a number")
})

test_that("p2b", {
  expect_true(all.equal(p2, 1338, tol = 0.01))
  print("Checking: correct number of individuals")
})
