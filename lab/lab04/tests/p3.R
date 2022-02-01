library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p3a
  points: 0.2
- hidden: false
  name: p3b
  points: 0.2
- hidden: false
  name: p3c
  points: 0.2
- hidden: false
  name: p3d
  points: 0.2
- hidden: false
  name: p3e
  points: 0.2
name: p3

"

test_that("p3a", {
  expect_true("numeric" %in% class(p3))
  print("Checking: p3 is a numeric vector")
})

test_that("p3b", {
  expect_true(length(p3) == 9)
  print("Checking: there are 9 numbers")
})

test_that("p3c", {
  expect_true(all(p3[1:3] == c(190, 10, 200)))
  print("Checking: first column")
})

test_that("p3d", {
  expect_true(all(p3[4:6] == c(490, 9310, 9800)))
  print("Checking: second column")
})

test_that("p3e", {
  expect_true(all(p3[7:9] == c(680, 9320, 10000)))
  print("Checking: third column")
})
