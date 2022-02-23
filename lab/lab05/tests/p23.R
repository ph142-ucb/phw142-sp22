library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p23a
  points: 0
- hidden: false
  name: p23b
  points: 0
name: p23

"

test_that("p23a", {
  expect_true(p23 > 2300 & p23 < 2400)
  print("Checking: range of p23")
})

test_that("p23b", {
  expect_true(all.equal(p23,  qnorm(0.25, mean = 2750, sd = 560), tol = 0.01))
  print("Checking: value of p23")
})
