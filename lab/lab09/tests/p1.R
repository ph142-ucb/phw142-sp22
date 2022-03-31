library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p1a
  points: 0.2
- hidden: false
  name: p1b
  points: 0.2
- hidden: false
  name: p1c
  points: 0.2
- hidden: false
  name: p1d
  points: 0.2
- hidden: false
  name: p1e
  points: 0.2
name: p1

"

test_that("p1a", {
  expect_true("ggplot" %in% class(plot1))
  print("Checking: ggplot defined")
})

test_that("p1b", {
  expect_true(identical(plot1$data, nhanes))
  print("Checking: nhanes data used")
})

test_that("p1c", {
  expect_true(rlang::quo_get_expr(plot1$mapping$x) == "hs")
  print("Checking:history of smoking on x axis")
})

test_that("p1d", {
  expect_true(rlang::quo_get_expr(plot1$mapping$y) == "bpxsy1")
  print("Checking: systolic blood pressure on y axis")
})

test_that("p1e", {
  expect_true("GeomBoxplot" %in% class(plot1$layers[[1]]$geom))
  print("Checking: boxplot created")
})
