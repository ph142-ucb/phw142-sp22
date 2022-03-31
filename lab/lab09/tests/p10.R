library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p10a
  points: 0.3333333333333333
- hidden: false
  name: p10b
  points: 0.3333333333333333
- hidden: false
  name: p10c
  points: 0.3333333333333333
name: p10

"

test_that("p10a", {
  expect_true(conf_int[1] < conf_int[2])
  print("Checking: order of inputs")
})

test_that("p10b", {
  expect_true(all.equal(conf_int[1], -2.560568, tol = 0.001))
  print("Checking: value of lowerbound")
})

test_that("p10c", {
  expect_true(all.equal(conf_int[2], 3.062968, tol = 0.001))
  print("Checking: value of upperbound")
})
