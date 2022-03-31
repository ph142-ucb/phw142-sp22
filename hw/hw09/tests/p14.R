library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p14a
  points: 0.2
- hidden: false
  name: p14b
  points: 0.2
- hidden: false
  name: p14c
  points: 0.2
- hidden: false
  name: p14d
  points: 0.2
- hidden: false
  name: p14e
  points: 0.2
name: p14

"

test_that("p14a", {
  expect_true("ggplot" %in% class(p14))
  print("Checking: ggplot created")
})

test_that("p14b", {
  expect_true(rlang::quo_get_expr(p14$mapping$x) == "pop.density")
  print("Checking: pop.density on x-axis")
})

test_that("p14c", {
  expect_true(rlang::quo_get_expr(p14$mapping$y) == "democrat")
  print("Checking: democrat on y-axis")
})

test_that("p14d", {
  expect_true("GeomPoint" %in% class(p14$layers[[1]]$geom))
  print("Checking: scatterplot added")
})

test_that("p14e", {
  expect_true("GeomTextRepel" %in% class(p14$layers[[2]]$geom))
  print("Checking: labels added")
})
