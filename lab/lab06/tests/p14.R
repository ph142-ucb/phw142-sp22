library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p14a
  points: 0.5
- hidden: false
  name: p14b
  points: 0.5
name: p14

"

test_that("p14a", {
  expect_true(all.equal(p14[1], round(812*0.27, 0), tol = 0.01))
  print("Checking: Expected number of cases is correct")
  
})

test_that("p14b", {
  expect_true(all.equal(p14[2], round(sqrt(812*0.27*0.73), 2), tol = 0.01))
  print("Checking: Standard deviation is correct")
  
})
