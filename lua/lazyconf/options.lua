local opt = vim.opt

-- 显示行号
opt.relativenumber = false
opt.number = true
-- 缩进
opt.tabstop = 4
opt.shiftwidth = 4
-- opt.tabstop = 2
-- opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- 防止包裹
opt.wrap = false

-- 光标行
opt.cursorline = true

-- 启用鼠标
opt.mouse:append("a")

-- 系统剪切板
opt.clipboard:append("unnamedplus")

-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 搜索
opt.ignorecase = true
opt.smartcase = true

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"
-- vim.cmd("colorscheme gruvbox-material") -- 主题
vim.cmd("colorscheme crimson_moonlight") -- 主题

-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "dap-repl",
--   callback = function(args)
--     vim.api.nvim_buf_set_option(args.buf, "buflisted", false)
--   end,
-- })
-- if vim.fn.has("termguicolors") then
--   vim.opt.termguicolors = true
-- end
