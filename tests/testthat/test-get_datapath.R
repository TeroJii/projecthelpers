test_that("incorrect input return error", {
  expect_error(get_datapath(project_path = 1, data_folder = "R", use_dotenv = FALSE))
  expect_error(get_datapath(project_path = "C:/Users/username/project_path", data_folder = 1, use_dotenv = FALSE))
  expect_error(get_datapath(project_path = "C:/Users/username/project_path", data_folder = "R", use_dotenv = 1))
})
