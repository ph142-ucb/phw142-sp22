library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p7a
  points: 0.25
- hidden: false
  name: p7b
  points: 0.25
- hidden: false
  name: p7c
  points: 0.25
- hidden: false
  name: p7d
  points: 0.25
name: q7

"

test_that("p7a", {
  expect_true("ggplot" %in% class(p7))
  print("Checking: p7 is a ggplot")
})

test_that("p7b", {
  expect_true(identical(p7$data, CS_data))
  print("Checking: Using CS_data")
})

test_that("p7c", {
  expect_true(rlang::quo_get_expr(p7$mapping$x) == "Income_Group_order")
  print("Checking: Income_Group_order is on the x-axis")
})

test_that("p7d", {
  expect_true("GeomBar" %in% class(p7$layers[[1]]$geom))
  print("Checking: Made a barchart")
})
