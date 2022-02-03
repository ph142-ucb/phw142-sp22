library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p5a
  points: 0.3333333333333333
- hidden: false
  name: p5b
  points: 0.3333333333333333
- hidden: false
  name: p5c
  points: 0.3333333333333333
name: p5

"

test_that("p5a", {
  expect_true("numeric" %in% class(p5))
  print("Checking: p5 is a numeric vector")
})

test_that("p5b", {
  expect_true(length(p5) == 5)
  print("Checking: p5 has 5 elements in it")
})

test_that("p5c", {
  expect_true( p5[1] <= p5[2] & p5[2] <= p5[3] & p5[3] <= p5[4] & p5[4] <= p5[5])
  print("Checking: checking elements of p5")
})
