library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p16a
  points: 0.25
- hidden: false
  name: p16b
  points: 0.25
- hidden: false
  name: p16c
  points: 0.25
- hidden: false
  name: p16d
  points: 0.25
name: p16

"

test_that("p16a", {
  expect_true(identical(p16$data, obs_data))
  print("Checking: Using `obs_data`")
  
})

test_that("p16b", {
  expect_true(quo_get_expr(p16$mapping$x) == "x_vals")
  print("Checking: `x_vals` is on the x-axis")
  
})

test_that("p16c", {
  expect_true(quo_get_expr(p16$mapping$y) == "probs")
  print("Checking: `probs` is on the y-axis")
  
})

test_that("p16d", {
  expect_true("GeomBar" %in% class(p16$layers[[1]]$geom))
  print("Checking: Made a histogram")
  
})
