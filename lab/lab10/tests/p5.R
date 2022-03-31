library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p5a
  points: 0.2857142857142857
- hidden: false
  name: p5b
  points: 0.2857142857142857
- hidden: false
  name: p5c
  points: 0.2857142857142857
- hidden: false
  name: p5d
  points: 0.2857142857142857
- hidden: false
  name: p5e
  points: 0.2857142857142857
- hidden: false
  name: p5f
  points: 0.2857142857142857
- hidden: false
  name: p5g
  points: 0.2857142857142857
name: p5

"

test_that("p5a", {
  expect_true("ggplot" %in% class(p5))
  print("Checking: ggplot defined")
})

test_that("p5b", {
  expect_true(identical(p5$data, boston2))
  print("Checking: boston2 data used")
})

test_that("p5c", {
  expect_true(rlang::quo_get_expr(p5$mapping$x) == "dis")
  print("Checking: dis on x-axis")
})

test_that("p5d", {
  expect_true(rlang::quo_get_expr(p5$mapping$y) == "medv")
  print("Checking: medv on y-axis")
})

test_that("p5e", {
  expect_true("GeomPoint" %in% class(p5$layers[[1]]$geom) | "GeomSmooth" %in% class(p5$layers[[1]]$geom) | "GeomAbline" %in% class(p5$layers[[1]]$geom))
  print("Checking: points added or lines drawn")
})

test_that("p5f", {
  expect_true("GeomPoint" %in% class(p5$layers[[2]]$geom) | "GeomSmooth" %in% class(p5$layers[[2]]$geom) | "GeomAbline" %in% class(p5$layers[[2]]$geom))
  print("Checking: points added or lines drawn")
})

test_that("p5g", {
  expect_true("GeomPoint" %in% class(p5$layers[[3]]$geom) | "GeomSmooth" %in% class(p5$layers[[3]]$geom) | "GeomAbline" %in% class(p5$layers[[3]]$geom))
  print("Checking: points added or lines drawn")
})
