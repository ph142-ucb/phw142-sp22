library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p18a
  points: 0.5
- hidden: false
  name: p18b
  points: 0.5
name: p18

"

test_that("p18a", {
  expect_true(is.numeric(p18))
  print("Checking: p18 is a number")
})

test_that("p18b", {
  expect_true(all.equal(p18, 0.248139, 0.01))
  print("Checking: correct PPV")
})
