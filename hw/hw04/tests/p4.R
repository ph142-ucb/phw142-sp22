library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p4a
  points: 0.16666666666666666
- hidden: false
  name: p4b
  points: 0.16666666666666666
- hidden: false
  name: p4c
  points: 0.16666666666666666
- hidden: false
  name: p4d
  points: 0.16666666666666666
- hidden: false
  name: p4e
  points: 0.16666666666666666
- hidden: false
  name: p4f
  points: 0.16666666666666666
- hidden: false
  name: p4g
  points: 0.16666666666666666
- hidden: false
  name: p4h
  points: 0.16666666666666666
- hidden: false
  name: p4i
  points: 0.16666666666666666
- hidden: false
  name: p4j
  points: 0.16666666666666666
- hidden: false
  name: p4k
  points: 0.16666666666666666
- hidden: false
  name: p4l
  points: 0.16666666666666666
name: p4

"

test_that("p4a", {
  expect_true(is.data.frame(output_02))
  print("Checking: output_02 is a dataframe")
})

test_that("p4b", {
  expect_true(ncol(output_02) == 2)
  print("Checking: output_02 has two columns")
})

test_that("p4c", {
  expect_true(nrow(output_02) == 1)
  print("Checking: output_02 has 1 row")
})

test_that("p4d", {
  expect_true(is.data.frame(output_03))
  print("Checking: output_03 is a dataframe")
})

test_that("p4e", {
  expect_true(ncol(output_03) == 2)
  print("Checking: output_03 has two columns")
})

test_that("p4f", {
  expect_true(nrow(output_03) == 1)
  print("Checking: output_03 has 1 row")
})

test_that("p4g", {
  expect_true(is.data.frame(output_04))
  print("Checking: output_04 is a dataframe")
})

test_that("p4h", {
  expect_true(ncol(output_04) == 2)
  print("Checking: output_04 has two columns")
})

test_that("p4i", {
  expect_true(nrow(output_04) == 1)
  print("Checking: output_04 has 1 row")
})

test_that("p4j", {
  expect_true(is.data.frame(output_05))
  print("Checking: output_05 is a dataframe")
})

test_that("p4k", {
  expect_true(ncol(output_05) == 2)
  print("Checking: output_05 has two columns")
})

test_that("p4l", {
  expect_true(nrow(output_05) == 1)
  print("Checking: output_05 has 1 row")
})
