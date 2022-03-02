library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p5a
  points: 0.5
- hidden: false
  name: p5b
  points: 0.5
name: p5

"

test_that("p5a", {
  expect_true(nrow(anorexia_diff) == 72 & 
               ncol(anorexia_diff) == 4)
  print("Checking: anorexia_diff has 72 rows and 4 columns")
  
})

test_that("p5b", {
  expect_true(anorexia_diff$diff[1] == anorexia$Postwt[1] - anorexia$Prewt[1])
  print("Checking: correct mutation on the `diff` column")
  
})
