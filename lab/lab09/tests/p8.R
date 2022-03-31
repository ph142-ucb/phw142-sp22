library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p8a
  points: 1
name: p8

"

test_that("p8a", {
  expect_true(all.equal(t_stat, 0.2309, 0.001))
  print("Checking: value of test statistic")
})
