library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p6a
  points: 0.5
- hidden: false
  name: p6b
  points: 0.5
name: p6

"

test_that("p6a", {
  expect_true(all.equal(t_stat_p_val[1], 1.247, tol = 0.01))
  print("Checking: t test-statistic is correct")
})

test_that("p6b", {
  expect_true(all.equal(t_stat_p_val[2], .227, tol = 0.01))
  print("Checking: p-value is correct")
})
