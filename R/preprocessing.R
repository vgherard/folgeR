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

#' @title Remove HTML tags from text
#'
#' @author Valerio Gherardi
#' @md
#'
#' @description Removes HTML tags from character vectors containing HTML code.
#' @param text a character vector.
#'
#' @return a character vector.
#' @noRd
strip_html_tags <- function(text)
        gsub("<[^>]+>", " ", text)

#' @title Remove extra space
#'
#' @author Valerio Gherardi
#' @md
#'
#' @description Removes extra space from strings.
#' @param text a character vector.
#'
#' @return a character vector.
#' @noRd
remove_extra_space <- function(text)
        gsub("[[:space:]]+", " ", text)

#' @title Trim lateral space
#'
#' @author Valerio Gherardi
#' @md
#'
#' @description Removes lateral space from strings.
#' @param text a character vector.
#'
#' @return a character vector.
#' @noRd
trim_lr_space <- function(text)
        gsub("^[[:space:]]+|[[:space:]]+$", "", text)
