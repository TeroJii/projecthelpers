get_datapath <- function(project_path = "", data_folder = "Data", use_dotenv = FALSE) {

  stopifnot(is.character(project_path))
  stopifnot(is.character(data_folder))
  stopifnot(is.logical(use_dotenv))

  user_profile <- Sys.getenv("USERPROFILE")
  if(use_dotenv){
    project_path <- Sys.getenv("PROJECT_PATH")
  }

  # Get the path to the data directory
  path <- file.path(user_profile, project_path, data_folder)

  # Check if the path exists
  if (!dir.exists(path)) {
    stop(paste("The specified path does not exist:", path))
  }

  return(path)
}
