local M = {
    "luukvbaal/statuscol.nvim",
    event = "VeryLazy",
    opts = function()
        local builtin = require("statuscol.builtin")
        return {
            setopt = true,
            -- order = "NSFs",
            -- Number Sign Fold sep
            segments = {
                {
                  sign = { name = { "Diagnostic" }, maxwidth = 2, auto = true },
                  click = "v:lua.ScSa"
                },
                { text = { "%s" }, click = "v:lua.ScSa" },
                { text = { " ", builtin.lnumfunc }, click = "v:lua.ScLa", },
                {
                  sign = { name = { ".*" }, maxwidth = 3, colwidth = 2, auto = true, wrap = true },
                  click = "v:lua.ScSa"
                },
                { text = { " ", builtin.foldfunc, " " }, maxwidth = 1, colwidth = 1, click = "v:lua.ScFa" },
            },
        }
    end,
    config = function(_, opts)
        statuscol = require("statuscol")
        statuscol.setup(opts)
    end,
}
return M
