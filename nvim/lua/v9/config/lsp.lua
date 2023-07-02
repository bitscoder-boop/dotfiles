-- # what is i try to add g to all its keymap
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local on_attach = function()
	vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
	vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { buffer = 0 })
	vim.keymap.set("n", "gr", vim.lsp.buf.rename, { buffer = 0 })
	vim.keymap.set("n", "F", vim.lsp.buf.format, { buffer = 0 })
	-- send document hightlight request to all server
end

require("lspconfig")["pyright"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

require("lspconfig")["tsserver"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

require("lspconfig")["cssmodules_ls"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
	-- avoid accepting `go-to-definition` responses from this LSP
	-- client.resolved_capabilities.goto_definition = false
})
require("lspconfig").rust_analyzer.setup({
	capabilities = capabilities,
	on_attach = on_attach,
})
require("lspconfig")["lua_ls"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
	settings = {
		diagnostics = {
			globals = { "vim", "use" },
		},
	},
})
require("lspconfig").tailwindcss.setup({
	capabilities = capabilities,
	on_attach = on_attach,
})
require("lspconfig").html.setup({
	capabilities = capabilities,
	on_attach = on_attach,
})
require'lspconfig'.graphql.setup({
	capabilities = capabilities,
	on_attach = on_attach,
})


require('lspconfig').emmet_ls.setup({
    -- on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "svelte", "pug", "typescriptreact", "vue" },
    init_options = {
      html = {
        options = {
          -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
          ["bem.enabled"] = true,
        },
      },
    }
})
