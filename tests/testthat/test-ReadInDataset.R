test_that("data.table read-in works", {
  table1 <- data.table::fread('testdata/customers-100.csv')
  table2 <- read_in_dataset(file = 'testdata/customers-100.csv', method = 'data.table')
  expect_equal(table1,table2)
  expect_equal(2 * 2, 4)
})

test_that("feather read-in works", {
  table1 <- feather::read_feather('testdata/cars.feather')
  table2 <- read_in_dataset(file = 'testdata/cars.feather', method = 'feather')
  expect_equal(table1,table2)
  expect_equal(2 * 2, 4)
})

test_that("RData read-in works", {
  table1 <- base::mget( load('testdata/cars.RData'))
  table2 <- read_in_dataset(file = 'testdata/cars.RData', method = 'RData')
  expect_equal(table1,table2)
  expect_equal(2 * 2, 4)
})

test_that("RData read-in works", {
  table1 <- base::mget( load('testdata/cars.rds'))
  table2 <- read_in_dataset(file = 'testdata/cars.rds', method = 'RData')
  expect_equal(table1,table2)
  expect_equal(2 * 2, 4)
})


