library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p16
  points: 1
name: p16

"

test_that("p16", {
  expect_true(tolower(p16) == "ppv" | tolower(p16) == "positive predictive value")
  print("Checking: solution to p16")
})
