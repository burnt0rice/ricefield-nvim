local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.completion.spell,
        null_ls.builtins.formatting.asmfmt,
        null_ls.builtins.formatting.prettierd,
        null_ls.builtins.formatting.gofmt,
    },
})
