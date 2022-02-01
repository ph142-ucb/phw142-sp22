library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p9a
  points: 0.5
- hidden: false
  name: p9b
  points: 0.5
name: p9

"

test_that("p9a", {
  expect_true(typeof(p9) == "character")
  print("Checking: a choice was made")
})

test_that("p9b", {
  expect_true(p9 == "Smokers of normal BMI")
  print("Checking: correct choice was made")
})
