#' Subset files by file type
#'
#' A helper function to subset a vector of file names by their file type.
#'
#' @param name_vector A character vector of file names.
#' @param extension A character string specifying the file type to subset by.
#'
#' @returns A character vector of file names that match the specified file type.
#' @export
#'
#' @examples
#' file_names <- c("data1.csv", "data2.tsv", "data3.xlsx",
#' "data4.txt", "data5.rds", "data6.json")
#' subset_filetype(file_names, "csv")
subset_filetype <- function(name_vector, extension = "csv"){
  stopifnot(is.character(name_vector))
  match.arg(extension, choices = c("csv", "tsv", "xlsx", "txt", "rds", "json"))

  name_vector[grepl(pattern = paste0(extension, "$"), x = name_vector)]
}
