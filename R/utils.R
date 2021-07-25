# folgeR
# Copyright (C) 2021  Valerio Gherardi
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

#' @title Construct Folger HTTP request
#'
#' @description Helper for constructing HTTP requests to the Folger API.
#'
#' @param play A length one character. Code of the requested play.
#' @param fun A length one character. API function to apply to \code{play}.
#' @param ... not used.
#'
#' @return a list, containing the argument of the httr::GET() call.
#'
#' @noRd
folg_http_req <- function(play, fun, ...) {
        validate_play(play)
        url <- "https://www.folgerdigitaltexts.org/"
        path <- paste0(play, "/", fun, "/")
        list(url = url, path = path)
}

