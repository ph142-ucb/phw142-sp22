library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p28a
  points: 0
- hidden: false
  name: p28b
  points: 0
name: p28

"

test_that("p28a", {
  expect_true(p28 > 0 & p28 < 1)
  print("Checking: range of p28")
})

test_that("p28b", {
  expect_true(all.equal(p28, pnorm(-2.25, 0, 1, lower.tail = F), tol = 0.01))
  print("Checking: value of p28")
})
