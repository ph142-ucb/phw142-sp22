library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p29a
  points: 0
- hidden: false
  name: p29b
  points: 0
name: p29

"

test_that("p29a", {
  expect_true(p29 > 0 & p29 < 1)
  print("Checking: range of p29")
})

test_that("p29b", {
  expect_true(all.equal(p29, pnorm(1.77, 0, 1, lower.tail = F), tol = 0.01))
  print("Checking: value of p29")
})
