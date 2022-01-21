library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p5a
  points: 0.5
- hidden: false
  name: p5b
  points: 0.5
name: q5

"

test_that("p5a", {
  expect_true(all.equal(GDP_summary$mean_GDP, 11790.67, tol = 0.01))
  print("Checking: GDP_summary has a column called `mean_GDP` with the correct value")
})

test_that("p5b", {
  expect_true(all.equal(GDP_summary$median_GDP, 3351.305, tol = 0.01))
  print("Checking: GDP_summary has a column called `median_GDP` with the correct value")
})
