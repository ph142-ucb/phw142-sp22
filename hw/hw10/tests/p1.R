library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p1
  points: 1
name: p1

"

test_that("p1", {
  expect_true(all.equal(p1, 1537, tol = 0.00001))
  print("Checking: calculated correct sample size")
})
