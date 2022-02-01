library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p29a
  points: 0.5
- hidden: false
  name: p29b
  points: 0.5
name: p29

"

test_that("p29a", {
  expect_true(is.numeric(p29))
  print("Checking: p29 is a number")
})

test_that("p29b", {
  expect_true(all.equal(p29,15578.1, tol = 0.1))
  print("Checking: correct value of p29")
})
