library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p6a
  points: 0.3333333333333333
- hidden: false
  name: p6b
  points: 0.3333333333333333
- hidden: false
  name: p6c
  points: 0.3333333333333333
name: q6

"

test_that("p6a", {
  expect_true("ggplot" %in% class(p6))
  print("Checking: p6 is a ggplot")
})

test_that("p6b", {
  expect_true(all.equal(p6$layers[[2]]$mapping$xintercept, 11790.67, tol = 0.01))
  print("Checking: First vline (mean) is set to the correct value")
})

test_that("p6c", {
  expect_true(all.equal(p6$layers[[3]]$mapping$xintercept, 3351.305, tol = 0.01))
  print("Checking: Second vline (median) is set to the correct value")
})
