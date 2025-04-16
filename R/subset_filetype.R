subset_filetype <- function(name_vector, extension = "csv"){
  stopifnot(is.character(name_vector))
  match.arg(extension, choices = c("csv", "tsv", "xlsx", "txt", "rds", "json"))

  name_vector[grepl(pattern = paste0(extension, "$"), x = name_vector)]
}
