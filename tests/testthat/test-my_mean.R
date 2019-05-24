library(testthat)
library(jonoMean)

context("My mean functions")

test_that("Calculated correctly", {
  #success case
  expect_equal(my_mean(1:10), 5.5)

  #fail NA
  x <- c(1, 2, NA)
  expect_error(my_mean(x), NA)

  #fail test
  x <- c(1, 2, "text")
  expect_error(my_mean(x))
})
