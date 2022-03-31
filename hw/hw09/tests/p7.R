library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p7a
  points: 0.2
- hidden: false
  name: p7b
  points: 0.2
- hidden: false
  name: p7c
  points: 0.2
- hidden: false
  name: p7d
  points: 0.2
- hidden: false
  name: p7e
  points: 0.2
name: p7

"

test_that("p7a", {
  expect_true("ggplot" %in% class(p7))
  print("Checking: ggplot defined")
})

test_that("p7b", {
  expect_true(identical(p7$data, nhanes))
  print("Checking: nhanes data used")
})

test_that("p7c", {
  expect_true(rlang::quo_get_expr(p7$mapping$x) == "bpcat")
  print("Checking:blood pressure categories on x axis")
})

test_that("p7d", {
  expect_true(rlang::quo_get_expr(p7$mapping$y) == "lbdldl")
  print("Checking: blood lipid levels on y axis")
})

test_that("p7e", {
  expect_true("GeomBoxplot" %in% class(p7$layers[[1]]$geom))
  print("Checking: boxplot created")
})
