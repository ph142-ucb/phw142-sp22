library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p11a
  points: 0.16666666666666666
- hidden: false
  name: p11b
  points: 0.16666666666666666
- hidden: false
  name: p11c
  points: 0.16666666666666666
- hidden: false
  name: p11d
  points: 0.16666666666666666
- hidden: false
  name: p11e
  points: 0.16666666666666666
- hidden: false
  name: p11f
  points: 0.16666666666666666
- hidden: false
  name: p11g
  points: 0.16666666666666666
- hidden: false
  name: p11h
  points: 0.16666666666666666
- hidden: false
  name: p11i
  points: 0.16666666666666666
- hidden: false
  name: p11j
  points: 0.16666666666666666
- hidden: false
  name: p11k
  points: 0.16666666666666666
- hidden: false
  name: p11l
  points: 0.16666666666666666
name: p11

"

test_that("p11a", {
  expect_true(all.equal(A, 174.79, tol = 0.01))
  print("Checking: A to 2 decimal places")
})

test_that("p11b", {
  expect_true(all.equal(B, 50.67, tol = 0.01))
  print("Checking: B to 2 decimal places")
})

test_that("p11c", {
  expect_true(all.equal(C, 46.65, tol = 0.01))
  print("Checking: C to 2 decimal places")
})

test_that("p11d", {
  expect_true(all.equal(D, 87.93, tol = 0.01))
  print("Checking: D to 2 decimal places")
})

test_that("p11e", {
  expect_true(all.equal(E, 86.86, tol = 0.01))
  print("Checking: E to 2 decimal places")
})

test_that("p11f", {
  expect_true(all.equal(G, 68.09, tol = 0.01))
  print("Checking: G to 2 decimal places")
})

test_that("p11g", {
  expect_true(all.equal(H, 477.21, tol = 0.01))
  print("Checking: H to 2 decimal places")
})

test_that("p11h", {
  expect_true(all.equal(I, 138.33, tol = 0.01))
  print("Checking: I to 2 decimal places")
})

test_that("p11i", {
  expect_true(all.equal(J, 127.35, tol = 0.01))
  print("Checking: J to 2 decimal places")
})

test_that("p11j", {
  expect_true(all.equal(K, 240.07, tol = 0.01))
  print("Checking: K to 2 decimal places")
})

test_that("p11k", {
  expect_true(all.equal(L, 237.14, tol = 0.01))
  print("Checking: L to 2 decimal places")
})

test_that("p11l", {
  expect_true(all.equal(M, 185.91, tol = 0.01))
  print("Checking: M to 2 decimal places")
})
