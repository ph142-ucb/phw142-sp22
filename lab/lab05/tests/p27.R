library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p27a
  points: 0
- hidden: false
  name: p27b
  points: 0
name: p27

"

test_that("p27a", {
  expect_true(p27 > 0 & p27 < 1)
  print("Checking: range of p27")
})

test_that("p27b", {
  expect_true(all.equal(p27, pnorm(-2.25, 0, 1), tol = 0.01))
  print("Checking: value of p27")
})
