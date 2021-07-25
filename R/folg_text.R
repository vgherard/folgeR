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

#' @title Spoken Text in a Play
#'
#' @author Valerio Gherardi
#' @md
#'
#' @description Returns only the spoken text in the selected play.
#' @param play a length one character. Code of the required play, i.e. one of
#' the strings returned by \code{\link{folg_plays}()}.
#'
#' @return a length one character vector.
#' @examples folg_text("AWW")
#' @export
folg_text <- function(play) {
        response <- stop_for_status(folg_api_req(play = play, fun = "text"))

        txt <- content(response, as = "text")

        txt <- strip_html_tags(txt)
        txt <- gsub("\n", " ", txt)
        txt <- remove_extra_space(txt)
        txt <- trim_lr_space(txt)

        txt
}
