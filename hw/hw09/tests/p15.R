library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p15a
  points: 0.2
- hidden: false
  name: p15b
  points: 0.2
- hidden: false
  name: p15c
  points: 0.2
- hidden: false
  name: p15d
  points: 0.2
- hidden: false
  name: p15e
  points: 0.2
name: p15

"

test_that("p15a", {
  expect_true("ggplot" %in% class(p15))
  print("Checking: ggplot created")
})

test_that("p15b", {
  expect_true(rlang::quo_get_expr(p15$mapping$x) == "log_pop_density")
  print("Checking: logged pop density on x-axis")
})

test_that("p15c", {
  expect_true(rlang::quo_get_expr(p15$mapping$y) == "democrat")
  print("Checking: democrat on y-axis")
})

test_that("p15d", {
  expect_true("GeomPoint" %in% class(p15$layers[[1]]$geom))
  print("Checking: scatterplot added")
})

test_that("p15e", {
  expect_true("GeomTextRepel" %in% c(class(p15$layers[[3]]$geom), class(p15$layers[[2]]$geom)))
  print("Checking: labels added")
})
