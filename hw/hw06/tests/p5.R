library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p5a
  points: 0.5
- hidden: false
  name: p5b
  points: 0.5
name: p5

"

test_that("p5a", {
  expect_true(probability_109_or_more >= 0 & probability_109_or_more <= 1)
  print("Checking: range of probability_109_or_more")
})

test_that("p5b", {
  expect_true(all.equal(probability_109_or_more, 0, tol = 0.001))
  print("Checking: value of probability_109_or_more")
})
