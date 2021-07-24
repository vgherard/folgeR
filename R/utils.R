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
folg_url_req <- function(play, fun, ...) {
        validate_play_code(play)
        paste0("https://www.folgerdigitaltexts.org/",
               play, "/",
               fun, "/"
               # ...
        )
}

