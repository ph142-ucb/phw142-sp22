library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p13
  points: 1
name: p13

"

test_that("p13", {
  expect_true(all.equal(p13, 2.48172e-20, tol = 0.001))
  print("Checking: value of p-value")
})
