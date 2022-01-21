library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p12a
  points: 0.3333333333333333
- hidden: false
  name: p12b
  points: 0.3333333333333333
- hidden: false
  name: p12c
  points: 0.3333333333333333
name: q12

"

test_that("p12a", {
  expect_true("ggplot" %in% class(p12))
  print("Checking: p12 is a ggplot")
})

test_that("p12b", {
  expect_true(rlang::quo_get_expr(p12$mapping$y) == "CS_rate_100")
  print("Checking: CS_rate_100 is on the x-axis")
})

test_that("p12c", {
  expect_true("GeomBoxplot" %in% class(p12$layers[[1]]$geom))
  print("Checking: Made a boxplot")
}) 
