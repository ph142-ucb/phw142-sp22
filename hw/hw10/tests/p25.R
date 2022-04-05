library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p25
  points: 1
name: p25

"

test_that("p25", {
  expect_true(p25 == "A 95% CI will not contain 0, but a 99% CI will.")
  print("Checking: choice for p25")
})
