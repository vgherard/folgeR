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

#' @title Folger API path
#'
#' @description Construct the path of a Folger API request.
#'
#' @param play A length one character. Code of the required play.
#' @param fun A length one character. API function to apply to \code{play}.
#' @param ... Possible additional parameters required by \code{fun}.
#'
#' @return a string, endpoint of Folger API request.
#'
#' @noRd
folg_api_endpoint <- function(play, fun, ...)
        paste0(play, "/", fun, "/", ...)

#' @title Folger API request
#'
#' @description Helper for making requests to the Folger API.
#'
#' @param play A length one character. Code of the required play.
#' @param fun A length one character. API function to apply to \code{play}.
#' @param ... Possible additional parameters required by \code{fun}.
#'
#' @return a list, containing the argument of the httr::GET() call.
#'
#' @noRd
folg_api_req <- function(play, fun, ...) {
        validate_play(play)

        url <- httr::modify_url(
                url = "https://www.folgerdigitaltexts.org/",
                path = folg_api_endpoint(play, fun, ...)
                )
        ua <- httr::user_agent("http://github.com/vgherard/folgeR")

        httr::GET(url, ua)
}
