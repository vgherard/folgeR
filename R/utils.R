#' @title Construct Folger URL request
#'
#' @description Helper for constructing URL requests to the Folger API.
#'
#' @param play A length one character. Code of the requested play.
#' @param fun API function.
#' @param ... not used.
#'
#' @return a character vector. URL request to the Folger API.
#'
#' @noRd
folg_url_req <- function(play, fun, ...)
        paste0("https://www.folgerdigitaltexts.org/",
               play, "/",
               fun, "/"
               # ...
               )
