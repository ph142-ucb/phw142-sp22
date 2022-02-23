library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p24a
  points: 0
- hidden: false
  name: p24b
  points: 0
name: p24

"

test_that("p24a", {
  expect_true(p24 > 3400 & p24 < 3500)
  print("Checking: range of p24")
})

test_that("p24b", {
  expect_true(all.equal(p24,  qnorm(0.9, mean = 2750, sd = 560), tol = 0.01))
  print("Checking: value of p24")
})
