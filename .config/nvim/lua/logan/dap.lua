-- Debugging keymaps
vim.keymap.set("n", "<F17>", ":lua require'dap'.continue()<CR>")
vim.keymap.set("n", "<F13>", "lua require'dap'.step_over()<CR>")
vim.keymap.set("n", "<F14>", ":lua require'dap'.step_into()<CR>")
vim.keymap.set("n", "<F15>", ":lua require'dap'.step_out()<CR>")
vim.keymap.set("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set("n", "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
vim.keymap.set("n", "<leader>lp", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>")
vim.keymap.set("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>")
