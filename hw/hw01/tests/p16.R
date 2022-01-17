library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p16a
  points: 0.5
- hidden: false
  name: p16b
  points: 0.5
- hidden: false
  name: p16c
  points: 0.5
- hidden: false
  name: p16d
  points: 0.5
name: p16

"

test_that("p16a", {
  expect_true(is.data.frame(avg_by_vore))
  print("p16a: Checking avg_by_vore is a dataframe")
})

test_that("p16b", {
  expect_true(ncol(avg_by_vore) == 2 &&
                        nrow(avg_by_vore) == 5)
  print("p16b: Checking avg_by_vore has 5 rows and 2 columns")
})

test_that("p16c", {
  expect_true(identical(names(avg_by_vore), c("vore", "sleep_avg")))
  print("p16c: Checking column names are vore and sleep_avg")
})

test_that("p16d", {
  expect_true(all.equal(avg_by_vore$sleep_avg[1], 10.378947, 0.01))
  print("p16c: Checking correct averages")
})
