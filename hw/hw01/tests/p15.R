library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p15a
  points: 0.25
- hidden: false
  name: p15b
  points: 0.25
- hidden: false
  name: p15c
  points: 0.25
- hidden: false
  name: p15d
  points: 0.25
name: p15

"

test_that("p15a", {
  expect_true(is.data.frame(avg_sleep_time))
  print("p15a: Checking avg_sleep_time is a dataframe")
})

test_that("p15b", {
  expect_true(ncol(avg_sleep_time) == 1 &&
                        nrow(avg_sleep_time) == 1)
  print("p15b: Checking avg_sleep_time has 1 row and 1 column")
})

test_that("p15c", {
  expect_true(is.numeric(avg_sleep_time$sleep_avg))
  print("p15c: Checking sleep_avg column is numeric")
})

test_that("p15d", {
  expect_true(all.equal(avg_sleep_time$sleep_avg, 10.43373, tol = 0.01))
  print("p15d: Checking sleep_avg column is 10.4337")
})
