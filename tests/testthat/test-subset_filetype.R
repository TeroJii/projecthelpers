test_that("Not supported file extension results in an error", {
  expect_error(subset_filetype(c("data1.csv", "data2.tsv"), "docx"))
})


test_that("Incorrect input vector causes an error", {
  expect_error(subset_filetype(c(TRUE, "data2.tsv"), "docx"))
})
