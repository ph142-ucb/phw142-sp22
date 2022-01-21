library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p16a
  points: 0.14285714285714285
- hidden: false
  name: p16b
  points: 0.14285714285714285
- hidden: false
  name: p16c
  points: 0.14285714285714285
- hidden: false
  name: p16d
  points: 0.14285714285714285
- hidden: false
  name: p16e
  points: 0.14285714285714285
- hidden: false
  name: p16f
  points: 0.14285714285714285
- hidden: false
  name: p16g
  points: 0.14285714285714285
name: q16

"

test_that("p16a", {
  expect_true("ggplot" %in% class(p16))
  print("Checking: p16 is a ggplot")
})

test_that("p16b", {
  expect_true(identical(p16$data, CS_data))
  print("Checking: Using CS_data")
})

test_that("p16c", {
  expect_true("GeomBar" %in% class(p16$layers[[1]]$geom))
  print("Checking: Made a histogram or a barchart")
})

test_that("p16d", {
  expect_true(length(p16$layers[[1]]$aes_params)!=0)
  print("Checking: Fill color set")
})

test_that("p16e", {
  expect_true(length(p16$labels$y) != 0)
  print("Checking: y-axis is labeled")
})

test_that("p16f", {
  expect_true(length(p16$labels$x) != 0)
  print("Checking: x-axis is labeled")
})

test_that("p16g", {
  expect_true(length(p16$labels$title) != 0)
  print("Checking: Title added")
})
