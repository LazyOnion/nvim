-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- quick esc
keymap("i", "jk", "<ESC>", opts)

-- Save file 
keymap("n", "<C-s>", "<cmd>w<CR>", opts)
keymap("n", "<C-q>", "<cmd>q<CR>", opts)

-- buffer delet
keymap("n", "<C-b>", "<cmd>bp | bd<CR>", opts)

-- Clear highlights
keymap("n", "<leader>nh", "<cmd>nohlsearch<CR>", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- add windows
keymap("n", "<leader>sv", "<C-w>v", opts) -- split vertival
keymap("n", "<leader>sh", "<C-w>s", opts) -- split horizental

-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>', opts)

-- NeoTree
keymap("n", "<leader>e", "<cmd>NeoTreeFocusToggle<CR>", opts)
keymap("n", "<leader>o", "<cmd>NeoTreeFloatToggle<CR>", opts)

-- barbec
keymap("n", "<C-p>", "<cmd>BufferPrevious<CR>", opts)
keymap("n", "<C-n>", "<cmd>BufferNext<CR>", opts)
keymap("n", "<leader>1", "<Cmd>BufferGoto 1<CR>", opts)
keymap("n", "<leader>2", "<Cmd>BufferGoto 2<CR>", opts)
keymap("n", "<leader>3", "<Cmd>BufferGoto 3<CR>", opts)
keymap("n", "<leader>4", "<Cmd>BufferGoto 4<CR>", opts)
keymap("n", "<leader>5", "<Cmd>BufferGoto 5<CR>", opts)

-- Markdown preview
keymap("n", "<C-f>", "<cmd>MarkdownPreviewToggle<CR>", opts)

