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

#' @title Shakespeare Play Codes
#'
#' @author Valerio Gherardi
#' @md
#' @description Returns the codes of Shakespeare's plays available in the Folger
#' Shakespeare Library.
#'
#' @return a named character vector, whose entry names are the titles of
#' Shakespeare's plays, and values are the corresponding play codes.
#' @examples folg_plays()
#' @export
folg_plays <- function()
        c(
                "All's Well That Ends Well" = "AWW",
                "Antony and Cleopatra" = "Ant",
                "As You Like It" = "AYL",
                "The Comedy of Errors" = "Err",
                "Coriolanus" = "Cor",
                "Cymbeline" = "Cym",
                "Hamlet" = "Ham",
                "Henry IV, Part 1" = "1H4",
                "Henry IV, Part 2" = "2H4",
                "Henry V" = "H5",
                "Henry VI, Part 1" = "1H6",
                "Henry VI, Part 2" = "2H6",
                "Henry VI, Part 3" = "3H6",
                "Henry VIII" = "H8",
                "Julius Caesar" = "JC",
                "King John" = "Jn",
                "King Lear" = "Lr",
                "Love's Labor's Lost" = "LLL",
                "Macbeth" = "Mac",
                "Measure for Measure" = "MM",
                "The Merchant of Venice" = "MV",
                "The Merry Wives of Windsor" = "Wiv",
                "A Midsummer Night's Dream" = "MND",
                "Much Ado About Nothing" = "Ado",
                "Othello" = "Oth",
                "Pericles" = "Per",
                "Richard II" = "R2",
                "Richard III" = "R3",
                "Romeo and Juliet" = "Rom",
                "The Taming of the Shrew" = "Shr",
                "The Tempest" = "Tmp",
                "Timon of Athens" = "Tim",
                "Titus Andronicus" = "Tit",
                "Troilus and Cressida" = "Tro",
                "Twelfth Night" = "TN",
                "Two Gentlemen of Verona" = "TGV",
                "Two Noble Kinsmen" = "TNK",
                "The Winter's Tale" = "WT"
        )

#' @title Validate Play Code
#'
#' @author Valerio Gherardi
#' @md
#'
#' @description Throws an exception if the input is not a valid play code.
#'
#' @return NULL, invisibly.
#' @noRd
validate_play <- function(play) {
        p <- is.character(play) && length(play) == 1 && !is.na(play)
        if (!p) {
                msg <- c(
                        h = "Invalid play code.",
                        x = "'play' must be a length one character (not NA)."
                        )
                rlang::abort(msg, class = "folg_domain_error")
        }

        q <- play %in% folg_plays()
        if (!q) {
                msg <- c(
                        h = "Unknown play code.",
                        x = paste(play, "is not a recognized play code."),
                        i = "Use folg_plays() to list all available plays."
                )
                rlang::abort(msg, class = "folg_unk_play_error")
        }

        return(invisible(NULL))
}
