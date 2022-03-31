library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p8a
  points: 1
- hidden: false
  name: p8b
  points: 1
name: p8

"

test_that("p8a", {
  expect_true("TukeyHSD" %in% class(tukey))
  print("Checking: TukeyHSD function used")
})

test_that("p8b", {
  expect_true(all.equal(tukey$bpcat[1,4], 0.751907, tol = 0.001))
  print("Checking: adjusted p-values")
})
