library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p13a
  points: 0.25
- hidden: false
  name: p13b
  points: 0.25
- hidden: false
  name: p13c
  points: 0.25
- hidden: false
  name: p13d
  points: 0.25
name: q13

"

test_that("p13a", {
  expect_true("ggplot" %in% class(p13))
  print("Checking: p13 is a ggplot")
})

test_that("p13b", {
  expect_true(identical(p13$data, CS_data))
  print("Checking: Using CS_data")
})

test_that("p13c", {
  expect_true(rlang::quo_get_expr(p13$mapping$x) == "GDP_2006")
  print("Checking: GDP_2006 is on the x-axis")
})

test_that("p13d", {
  expect_true("GeomBar" %in% class(p13$layers[[1]]$geom))
  print("Checking: Made a histogram")
})
