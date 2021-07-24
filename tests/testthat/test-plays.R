test_that("folg_plays() returns a character vector", {
        expect_vector(folg_plays(), character())
})

test_that("validate_play_codes() throws the expected exceptions", {

        # Throw domain errors
        domain_errors <- list(1, # Not character
                              c("AWW", "Ant"), # Length two
                              NA_character_ # NA
                              )
        for (play in domain_errors)
                expect_error(validate_play_code(play),
                             class = "folg_domain_error"
                             )

        # Throw 'unknown play' error
        expect_error(validate_play_code("ppp"), class = "folg_unk_play_error")

        # No error on valid play
        expect_error(validate_play_code("AWW"), NA)

})
