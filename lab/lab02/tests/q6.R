library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p6a
  points: 0.25
- hidden: false
  name: p6b
  points: 0.25
- hidden: false
  name: p6c
  points: 0.25
- hidden: false
  name: p6d
  points: 0.25
name: q6

"

test_that("p6a", {
  expect_true("ggplot" %in% class(p6))
  print("Checking: p6 is a ggplot")
})

test_that("p6b", {
  expect_true(identical(p6$data, CS_data))
  print("Checking: Using CS_data")
})

test_that("p6c", {
  expect_true(rlang::quo_get_expr(p6$mapping$x) == "Income_Group")
  print("Checking: Income_Group is on the x-axis")
})

test_that("p6d", {
  expect_true("GeomBar" %in% class(p6$layers[[1]]$geom))
  print("Checking: Made a barchart")
})
