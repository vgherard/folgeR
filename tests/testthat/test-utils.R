test_that("folg_http_req() returns a list", {
        expect_vector(folg_http_req("AWW", "text"), list())
})

test_that("folg_http_req() calls validate_play()", {
        expect_error(
                folg_http_req(c("AWW", "Ant"), "text"),
                class = "folg_domain_error"
                )
})
