library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p1a
  points: 1
- hidden: false
  name: p1b
  points: 1
name: p1

"

test_that("p1a", {
  expect_true(length(p1) == 4)
print("p1a: Checking p1 has 4 items in a list")
})

test_that("p1b", {
  expect_true(p1[1] == "dim" & p1[2] == "head" & p1[3] == "names" & p1[4] == "str")
  print("p1b: Checking the names of the 4 functions in alphabetical order")
})
