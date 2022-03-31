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
name: p13

"

test_that("p13a", {
  expect_true("ggplot" %in% class(p13))
  print("Checking: ggplot created")
})

test_that("p13b", {
  expect_true(rlang::quo_get_expr(p13$mapping$x) == "pop.density")
  print("Checking: pop.density on x-axis")
})

test_that("p13c", {
  expect_true(rlang::quo_get_expr(p13$mapping$y) == "democrat")
  print("Checking: democrat on y-axis")
})

test_that("p13d", {
  expect_true("GeomPoint" %in% class(p13$layers[[1]]$geom))
  print("Checking: scatterplot added")
})
