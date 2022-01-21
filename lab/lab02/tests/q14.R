library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p14a
  points: 0.2
- hidden: false
  name: p14b
  points: 0.2
- hidden: false
  name: p14c
  points: 0.2
- hidden: false
  name: p14d
  points: 0.2
- hidden: false
  name: p14e
  points: 0.2
name: q14

"

test_that("p14a", {
  expect_true("ggplot" %in% class(p14))
  print("Checking: p14 is a ggplot")
})

test_that("p14b", {
  expect_true(identical(p14$data, CS_data))
  print("Checking: Using CS_data")
})

test_that("p14c", {
  expect_true(rlang::quo_get_expr(p14$mapping$x) == "GDP_2006")
  print("Checking: GDP_2006 is on the x-axis")
})

test_that("p14d", {
  expect_true("GeomBar" %in% class(p14$layers[[1]]$geom))
  print("Checking: Made a histogram")
})

test_that("p14e", {
  expect_true(length(p14$layers[[1]]$stat_params$binwidth) != 0)
  print("Checking: Binwidth chosen")
})
