#' Fetch the project data path
#'
#' Convenience function, which returns the path to the data directory of a
#' project in the form "C:/Users/username/project_path/data_folder".
#'
#' @param project_path A characted string specifying the project path.
#' @param data_folder A character string specifying the data folder.
#' @param use_dotenv A logical value indicating whether to use the .env file to
#' get the project_path. If TRUE, the function will use the value specified in
#' the .env file. If FALSE, it will use the value specified by the user when
#' calling the function.
#'
#' @returns A character string representing the path to the data directory.
#' @export
#'
#' @examples
#' # not run
#' # get_datapath(project_path = my_project, data_folder = "R")
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
