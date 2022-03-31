library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p2a
  points: 0.25
- hidden: false
  name: p2b
  points: 0.25
- hidden: false
  name: p2c
  points: 0.25
- hidden: false
  name: p2d
  points: 0.25
name: p2

"

test_that("p2a", {
  expect_true("ggplot" %in% class(plot2))
  print("Checking: ggplot defined")
})

test_that("p2b", {
  expect_true(identical(plot2$data, nhanes))
  print("Checking: nhanes data used")
})

test_that("p2c", {
  expect_true(rlang::quo_get_expr(plot2$mapping$x) == "bpxsy1")
  print("Checking: blood pressure on x axis on x axis")
})

test_that("p2d", {
  expect_true("FacetGrid" %in% class(plot2$facet) | "FacetWrap" %in% class(plot2$facet))
  print("Checking: facet used")
})
