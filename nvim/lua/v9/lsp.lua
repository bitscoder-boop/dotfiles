local capabilities = require('cmp_nvim_lsp').default_capabilities()
local navbuddy = require("nvim-navbuddy")

local on_attach = function()
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {buffer=0})
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {buffer=0})
    vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, {buffer=0})
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {buffer=0})
    vim.keymap.set('n', ' df', vim.diagnostic.goto_next, {buffer=0})
    vim.keymap.set('n', ' dp', vim.diagnostic.goto_prev, {buffer=0})
    -- vim.keymap.set('n', '<space>f', vim.lsp.buf.format{timeout_ms = 10000}, {buffer=0})
    vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, {buffer=0})
end;

local function on_attach(client, bufnr)
    -- enable completion triggered by <C-x><C-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- use nvim-navbuddy to provide a minimap-style preview of the code
    navbuddy.attach(client, bufnr)

    -- customizations for tsserver
    -- ...
    require("notify")("LSP started")


end

require('lspconfig')['pyright'].setup{
    capabilities = capabilities,
    on_attach = on_attach
}

require('lspconfig')['tsserver'].setup{
    capabilities = capabilities,
    on_attach = on_attach
}

require('lspconfig')['cssmodules_ls'].setup{
    capabilities = capabilities,
    on_attach = on_attach
    -- avoid accepting `go-to-definition` responses from this LSP
    -- client.resolved_capabilities.goto_definition = false
}
require'lspconfig'.rust_analyzer.setup{
    capabilities = capabilities,
    on_attach = on_attach
}
require'lspconfig'.luau_lsp.setup{
    capabilities = capabilities,
    on_attach = on_attach
}
