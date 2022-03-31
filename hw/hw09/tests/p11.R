library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p11
  points: 1
name: p11

"

test_that("p11", {
  expect_true(all.equal(p11, 0.1579393, tolerance = .001))
  print("Checking: value of p-value")
})
