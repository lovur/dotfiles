local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local nvim_lsp = require'lspconfig'

local on_attach = function(client, bufnr)

    local bufopts = { noremap=true, silent=true, buffer=0 }
    
    vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set("n", "gm", vim.lsp.buf.implementation, bufopts)
    vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, bufopts)
    vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, bufopts)
    -- vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, {buffer=0})
    -- vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, {buffer=0})
end

-- Rust
nvim_lsp.rust_analyzer.setup{
    capabilities=capabilities,
    on_attach=on_attach 
}

-- Python
nvim_lsp.pyright.setup{
    capabilities=capabilities,
    on_attach=on_attach
}

-- Typescript
nvim_lsp.tsserver.setup{
    capabilities=capabilities,
    on_attach=on_attach
}

-- Go
nvim_lsp.gopls.setup{
    capabilities=capabilities,
    on_attach=on_attach
}

nvim_lsp.hls.setup{
    capabilities=capabilities,
    on_attach=on_attach
}
