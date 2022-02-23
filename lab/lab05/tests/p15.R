library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p15a
  points: 0.5
- hidden: false
  name: p15b
  points: 0.5
name: p15

"

test_that("p15a", {
  expect_true(expect_true(p15 > 0 & p15 < 1))
  print("Checking: p15 is a value between 0 and 1")
})

test_that("p15b", {
  expect_true(all.equal(p15, qnorm(0.8, mean = 0, sd = 1), tol = 0.01))
  print("Checking: p15 is the correct probability")
})
