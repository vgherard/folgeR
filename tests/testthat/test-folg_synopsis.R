test_that("folg_synopsis() return has the declared structure", {
        obj <- folg_synopsis("Ant")
        expect_vector(obj, ptype = list(), size = 2L)
        expect_vector(obj[[1]], ptype = character(), size = 1L)
        expect_vector(obj[[2]], ptype = character())
})
