library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p1a
  points: 0.3333333333333333
- hidden: false
  name: p1b
  points: 0.3333333333333333
- hidden: false
  name: p1c
  points: 0.3333333333333333
name: q1

"

test_that("p1a", {
  expect_true(aa == "CS_rate")
  print("Correct! Try to understand what each part of the code on line 82 does!")
})

test_that("p1b", {
  expect_true(bb == "100" | bb == 100)
  print("Correct! Try to understand what each part of the code on line 82 does!")
})

test_that("p1c", {
  expect_true(cc == "CS_rate_100")
  print("Correct! Try to understand what each part of the code on line 82 does!")
})
