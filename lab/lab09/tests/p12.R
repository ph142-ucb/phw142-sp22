library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p12a
  points: 0.25
- hidden: false
  name: p12b
  points: 0.25
- hidden: false
  name: p12c
  points: 0.25
- hidden: false
  name: p12d
  points: 0.25
name: p12

"

test_that("p12a", {
  expect_true("ggplot" %in% class(plot12))
  print("Checking: ggplot defined")
})

test_that("p12b", {
  expect_true(identical(plot12$data, nhanes))
  print("Checking: nhanes data used")
})

test_that("p12c", {
  expect_true(rlang::quo_get_expr(plot12$mapping$x) == "bpxsy1")
  print("Checking: blood pressure on x-axis")
})

test_that("p12d", {
  expect_true("FacetGrid" %in% class(plot12$facet) | "FacetWrap" %in% class(plot12$facet))
  print("Checking: facet_wrap or facet_grid used")
})
