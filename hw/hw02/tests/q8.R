library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p8a
  points: 0.5
- hidden: false
  name: p8b
  points: 0.5
name: q8

"

test_that("p8a", {
  expect_true("ggplot" %in% class(p8))
  print("Checking: p8 is a ggplot")
})

test_that("p8b", {
  expect_true(!is.null(p8$facet$params[1]$facets$Income_Group) ||
               !is.null(p8$facet$params[1]$facets$`"Income_Group"`))
  print("Checking: There is a separate histogram for each level of the `Income_Group` variable!")
})
