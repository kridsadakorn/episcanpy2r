#' Read data from h5ad file
#'
#' @description read data from h5ad file or the AnnData format.
#'
#' @param file A file name or a path to h5ad file. Default = NULL.
#' @param conda a name of conda environment to use. Default = NULL.
#'
#' @return A convert object of AnnData
#'
#' @details This function requires Python AnnData.
#'
#' @export
#' @md
#'
#' @import reticulate
#' @import Matrix
#'
#' @examples
#'
#' # Use the provided h5ad file with the package as example
#'
#' \dontrun{
#' myfile <- system.file("extdata", "example.h5ad", package="episcanpy2r")
#' adata <- read_h5ad(myfile)
#' }


read_h5ad <- function(file=NULL, conda = NULL) {
  if (!is.null(conda)){
    use_condaenv(conda)
  }
  ad <- import("anndata", convert = TRUE)
  adata <- ad$read_h5ad(file)
  return(adata)
}
