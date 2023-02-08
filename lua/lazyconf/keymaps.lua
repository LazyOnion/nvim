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
keymap("i", "<C-s>", "<cmd>w<CR>", opts)
keymap("i", "<C-q>", "<cmd>q<CR>", opts)

-- buffer delet
-- keymap("n", "<C-b>", "<cmd>bp | bd<CR>", opts)
keymap("n", "<C-b>", "<cmd>bd!<CR>", opts)

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

-- Resize the buffersize
keymap("n", "<C-S-k>", ":resize -2<CR>", opts)
keymap("n", "<C-S-j>", ":resize +2<CR>", opts)
keymap("n", "<C-S-h>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-S-l>", ":vertical resize +2<CR>", opts)

-- lsp
-- Peek Definition
-- support tagstack C-t jump back
keymap("n", "gD", "<cmd>Lspsaga peek_definition<CR>")
-- Go to Definition
keymap("n","gd", "<cmd>Lspsaga goto_definition<CR>")
-- Rename
keymap("n", "gr", "<cmd>Lspsaga rename<CR>")
-- Rename word in whole project
keymap("n", "gR", "<cmd>Lspsaga rename ++project<CR>")
-- Lsp finder find the symbol definition implement reference
keymap("n", "gf", "<cmd>Lspsaga lsp_finder<CR>")
-- outline
keymap("n", "go", "<cmd>Lspsaga outline<CR>")

-- show_line_diagnostics float window unfocus
keymap("n", "<leader>sl", "<cmd>Lspsaga show_line_diagnostics<CR>")
-- Show cursor diagnostic
keymap("n", "<leader>sc", "<cmd>Lspsaga show_cursor_diagnostics<CR>")
-- Show buffer diagnostic
keymap("n", "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<CR>")

-- hop (easy to motion)
keymap("n", "<leader>jl", "<cmd>HopLineStart<CR>", opts)
keymap("n", "<leader>ji", "<cmd>HopAnywhereCurrentLine<CR>", opts)
keymap("n", "<leader>ja", "<cmd>HopAnywhere<CR>", opts)
keymap("n", "<leader>jc", "<cmd>HopChar1<CR>", opts)
keymap("n", "<leader>jC", "<cmd>HopChar2<CR>", opts)

-- asynctasks
keymap("n", "<leader>b", "<cmd>AsyncTask file-build<CR>", opts)
keymap("n", "<leader>r", "<cmd>AsyncTask file-run<CR>", opts)


-- dap
keymap("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", opts)
keymap("n", "<leader>rl", "<cmd>DapToggleRepl<CR>", opts)
keymap("n", "<leader>c", "<cmd>DapContinue<CR>", opts)
keymap("n", "<leader>si", "<cmd>DapStepInto<CR>", opts)
keymap("n", "<leader>st", "<cmd>DapStepOut<CR>", opts)
keymap("n", "<leader>so", "<cmd>DapStepOver<CR>", opts)
keymap("n", "<leader>t", "<cmd>DapTerminate<CR>", opts)
keymap("n", "<leader>R", "<cmd>lua require'dap'.run_to_cursor()<CR>", opts)
keymap("n", "K", "<cmd>lua require'dapui'.eval(vim.fn.input '[Expression] > ')<CR>", opts)
