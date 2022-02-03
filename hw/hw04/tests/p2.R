library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p2a
  points: 1
- hidden: false
  name: p2b
  points: 1
name: p2

"

test_that("p2a", {
  expect_true("integer" == class(sim_01))
  print("Checking: sim_01 should be an integer vector")
})

test_that("p2b", {
  expect_true(length(sim_01) == 200)
  print("Checking: number of elements in sim_01")
})
