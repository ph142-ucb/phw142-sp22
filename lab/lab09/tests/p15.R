library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p15a
  points: 0.5
- hidden: false
  name: p15b
  points: 0.5
name: p15

"

test_that("p15a", {
  expect_true("TukeyHSD" %in% class(p15))
  print("Checking: tukeyHSD function used")
})

test_that("p15b", {
  expect_true(all.equal(p15$bmicat[1,4], 0.8833041, tol = 0.001))
  print("Checking: adjusted p-values")
})
