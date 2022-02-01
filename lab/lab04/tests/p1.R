library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p1a
  points: 0.2
- hidden: false
  name: p1b
  points: 0.2
- hidden: false
  name: p1c
  points: 0.2
- hidden: false
  name: p1d
  points: 0.2
- hidden: false
  name: p1e
  points: 0.2
name: p1

"

test_that("p1a", {
  expect_true("numeric" %in% class(p1))
  print("Checking: p1 is a numeric vector")
})

test_that("p1b", {
  expect_true(length(p1) == 9)
  print("Checking: Checking that there are 9 numbers")
})

test_that("p1c", {
  expect_true(all(p1[1:3] == c(475, 25, 500)))
  print("Checking: first column")
})

test_that("p1d", {
  expect_true(all(p1[4:6] == c(475, 9025, 9500)))
  print("Checking: second column")
})

test_that("p1e", {
  expect_true(all(p1[7:9] == c(950, 9050, 10000)))
  print("Checking: third column")
})
