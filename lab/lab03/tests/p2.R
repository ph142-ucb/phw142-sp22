library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p2a
  points: 0.3333333333333333
- hidden: false
  name: p2b
  points: 0.3333333333333333
- hidden: false
  name: p2c
  points: 0.3333333333333333
name: p2

"

test_that("p2a", {
  expect_true(is.data.frame(CS_data_log))
  print("Checking: CS_data_log is a dataframe")
})

test_that("p2b", {
  expect_true(all.equal(CS_data_log$log_CS, log(CS_data$CS_rate_100), tol = 0.01))
  print("Checking: log_CS is correctly transformed")
})

test_that("p2c", {
  expect_true(all.equal(CS_data_log$log_GDP, log(CS_data$GDP_2006), tol = 0.01))
  print("Checking: log_GDP is correctly transformed")
})
