library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p17a
  points: 0.5
- hidden: false
  name: p17b
  points: 0.5
name: p17

"

test_that("p17a", {
  expect_true(p17 > 3000 & p17 < 3100)
  print("Checking: p17 is a birthweight in grams")
})

test_that("p17b", {
  expect_true(all.equal(p17, qnorm(0.25, mean = 3350, sd = 440), tol = 0.01))
  print("Checking: p17 is the correct weight for the 25th percentile")
})
