library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p24
  points: 1
name: p24

"

test_that("p24", {
  expect_true(p24 == "-1.20 to 0.90")
  print("Checking: correct choice for p24")
})
