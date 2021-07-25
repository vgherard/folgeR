test_that("folg_text() returns a length one character vector", {
        expect_vector(folg_text("AWW"), ptype = character(), size = 1L)
})
