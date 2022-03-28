library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p13
  points: 1
name: p13

"

test_that("p13", {
  expect_true(all.equal(p13, "larger"))
  print("Checking: selection")
})
