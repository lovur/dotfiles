local Remap = require("logan.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local tnoremap = Remap.tnoremap
local nmap = Remap.nmap

nnoremap("<leader>pv", ":Ex<CR>")
tnoremap("<Esc>", "<C-\\><C-n>")

nnoremap("Y", "yg$")

nnoremap("<leader>p", '\"_dP')
nnoremap("<leader>y", "\"+y")
vnoremap("<leader>y", "\"+y")
nnoremap("<leader>d", "\"_d")
