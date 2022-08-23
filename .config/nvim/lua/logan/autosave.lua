vim.api.nvim_create_autocmd("BufWritePost", {
    group = vim.api.nvim_create_augroup("AutoSaveGroup", { clear = true }),
    pattern = "*.rs",
    callback = function()
        vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { "output of: main.rs" })
        vim.fn.jobstart({"rustc", "main.rs"}, {
            stdout_buffered = true,
            on_stdout = function(_, data)
                if data then
                    vim.api.nvim_set_lines(bufnr, -1, -1, false, data)
                end
            end,
        })
    end,
})
