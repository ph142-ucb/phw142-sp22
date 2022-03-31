library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p11a
  points: 0.2
- hidden: false
  name: p11b
  points: 0.2
- hidden: false
  name: p11c
  points: 0.2
- hidden: false
  name: p11d
  points: 0.2
- hidden: false
  name: p11e
  points: 0.2
name: p11

"

test_that("p11a", {
  expect_true("ggplot" %in% class(plot11))
  print("Checking: ggplot defined")
})

test_that("p11b", {
  expect_true(identical(plot11$data, nhanes))
  print("Checking: nhanes data used")
})

test_that("p11c", {
  expect_true(rlang::quo_get_expr(plot11$mapping$x) == "bmicat")
  print("Checking:cmicat on x-axis")
})

test_that("p11d", {
  expect_true(rlang::quo_get_expr(plot11$mapping$y) == "bpxsy1")
  print("Checking: systolic blood pressure on y-axis")
})

test_that("p11e", {
  expect_true("GeomBoxplot" %in% class(plot11$layers[[1]]$geom))
  print("Checking: boxplot created")
})
