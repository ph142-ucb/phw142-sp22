library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p16a
  points: 0.5
- hidden: false
  name: p16b
  points: 0.5
name: p16

"

test_that("p16a", {
  expect_true(expect_true(p16 > 0 & p16 < 1))
  print("Checking: p16 is a value between 0 and 1")
})

test_that("p16b", {
  expect_true(all.equal(p16, qnorm(0.35, mean = 0, sd = 1, lower.tail=FALSE), tol = 0.01))
  print("Checking: p16 is the correct probability")
})
