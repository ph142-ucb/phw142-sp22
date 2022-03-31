library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p18a
  points: 0.06666666666666667
- hidden: false
  name: p18b
  points: 0.06666666666666667
- hidden: false
  name: p18c
  points: 0.06666666666666667
- hidden: false
  name: p18d
  points: 0.06666666666666667
- hidden: false
  name: p18e
  points: 0.06666666666666667
- hidden: false
  name: p18f
  points: 0.06666666666666667
- hidden: false
  name: p18g
  points: 0.06666666666666667
- hidden: false
  name: p18h
  points: 0.06666666666666667
- hidden: false
  name: p18i
  points: 0.06666666666666667
- hidden: false
  name: p18j
  points: 0.06666666666666667
- hidden: false
  name: p18k
  points: 0.06666666666666667
- hidden: false
  name: p18l
  points: 0.06666666666666667
- hidden: false
  name: p18m
  points: 0.06666666666666667
- hidden: false
  name: p18n
  points: 0.06666666666666667
- hidden: false
  name: p18o
  points: 0.06666666666666667
name: p18

"

test_that("p18a", {
  expect_true(all.equal(CA_augment$.fitted[1], 49.93225, tol = 0.01))
  print("Checking: Correct augmented model")
})


test_that("p18b", {
  expect_true("ggplot" %in% class(plot1))
  print("Checking: ggplot created in plot1")
})

test_that("p18c", {
  expect_true(rlang::quo_get_expr(plot1$mapping$x) == "log_pop_density")
  print("Checking: logged pop density on x-axis of plot1")
})

test_that("p18d", {
  expect_true(rlang::quo_get_expr(plot1$mapping$y) == "democrat")
  print("Checking: democrat on y-axis of plot1")
})

test_that("p18e", {
  expect_true("GeomPoint" %in% class(plot1$layers[[1]]$geom))
  print("Checking: scatterplot added to plot1")
})

test_that("p18f", {
  expect_true("ggplot" %in% class(plot2))
  print("Checking: ggplot created in plot2")
})

test_that("p18g", {
  expect_true(rlang::quo_get_expr(plot2$mapping$sample) == ".resid")
  print("Checking: residuals plotted as 'sample' in plot2")
})

test_that("p18h", {
  expect_true("StatQqLine" %in% class(plot2$layers[[2]]$stat))
  print("Checking: qqplot defined for plot2")
})

test_that("p18i", {
  expect_true("GeomPoint" %in% class(plot2$layers[[1]]$geom))
  print("Checking: scatterplot added to plot2")
})

test_that("p18j", {
  expect_true("ggplot" %in% class(plot3))
  print("Checking: ggplot created in plot3")
})

test_that("p18k", {
  expect_true(rlang::quo_get_expr(plot3$mapping$x) == ".fitted")
  print("Checking: fitted values on x-axis of plot3")
})

test_that("p18l", {
  expect_true(rlang::quo_get_expr(plot3$mapping$y) == ".resid")
  print("Checking: residuals on y-axis of plot3")
})

test_that("p18m", {
  expect_true("GeomPoint" %in% class(plot3$layers[[1]]$geom))
  print("Checking: scatterplot added to plot3")
})

test_that("p18n", {
  expect_true("ggplot" %in% class(plot4))
  print("Checking: ggplot created in plot4")
})

test_that("p18o", {
  expect_true("GeomBoxplot" %in% class(plot4$layers[[1]]$geom))
  print("Checking: boxplot created for plot4")
})
