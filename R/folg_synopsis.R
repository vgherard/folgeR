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
#' @description Returns a synopsis of the play and its scenes
#' @inheritParams folg_text
#'
#' @return a list of two elements:
#'
#' - \code{summary}: a length one character vector, containing a summary of the
#' play.
#' - \code{scenes}: a character vector, whose entries are summaries of the
#' singular scenes of the play.
#' @examples folg_synopsis("AWW")
#' @export
folg_synopsis <- function(play) {
        response <- stop_for_status(folg_api_req(play = play, fun = "synopsis"))

        html <- content(response, as = "text")
        html <- unlist(strsplit(html, "<hr/>"))
        summary <- html[[1]]
        scenes <- html[[2]]

        summary <- strip_html_tags(summary)
        summary <- gsub("\n", " ", summary)
        summary <- remove_extra_space(summary)
        summary <- trim_lr_space(summary)

        scenes <- gsub("</p>", "", scenes)
        scenes <- unlist(strsplit(scenes, "<p>"))
        scenes <- gsub("\n", " ", scenes)
        scenes <- remove_extra_space(scenes)
        scenes <- trim_lr_space(scenes)
        scenes <- scenes[scenes != ""]

        list(summary = summary, scenes = scenes)
}
