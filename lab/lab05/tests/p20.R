library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p20a
  points: 0.5
- hidden: false
  name: p20b
  points: 0.5
name: p20

"

test_that("p20a", {
  expect_true(p20 > 0 & p20 < 100)
  print("Checking: p20 is a  value between 0 and 100")
})

test_that("p20b", {
  expect_true(all.equal(p20, 15.87, tol = 0.1))
  print("Checking: p20 is the correct percent")
})
