library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p13a
  points: 0.4
- hidden: false
  name: p13b
  points: 0.4
- hidden: false
  name: p13c
  points: 0.4
- hidden: false
  name: p13d
  points: 0.4
- hidden: false
  name: p13e
  points: 0.4
name: q13

"

test_that("p13a", {
  expect_true(all.equal(five_num_summary$min, 0.4, tol = 0.01))
  print("Checking: five_num_summary has a column called `min` with the correct value")
})

test_that("p13b", {
  expect_true(all.equal(five_num_summary$Q1[[1]], 5.1, tol = 0.01))
  print("Checking: five_num_summary has a column called `Q1` with the correct value")
})

test_that("p13c", {
  expect_true(all.equal(five_num_summary$median, 15.6, tol = 0.01) |
                all.equal(five_num_summary$median[[1]], 15.6, tol = 0.01))
  print("Checking: five_num_summary has a column called `median` with the correct value")
})

test_that("p13d", {
  expect_true(all.equal(five_num_summary$Q3[[1]], 23.3, tol = 0.01))
  print("Checking: five_num_summary has a column called `Q3` with the correct value")
})

test_that("p13e", {
  expect_true(all.equal(five_num_summary$max, 45.9, tol = 0.01))
  print("Checking: five_num_summary has a column called `max` with the correct value")
})
