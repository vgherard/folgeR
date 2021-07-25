test_that("folg_api_req() returns a response", {
        expect_s3_class(
                folg_api_req("AWW", "text"), "response", exact = T
                )
})

test_that("folg_api_req() calls validate_play()", {
        expect_error(
                folg_api_req(c("AWW", "Ant"), "text"),
                class = "folg_domain_error"
                )
})
