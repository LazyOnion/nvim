local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { "rebelot/kanagawa.nvim" }, -- 主题
  { "sainnhe/gruvbox-material" },
  {
    "nvim-lualine/lualine.nvim", -- 状态栏
    dependencies = { "kyazdani42/nvim-web-devicons"
    }
  },
  { "numToStr/Comment.nvim" }, -- 注释
  { "windwp/nvim-autopairs", config = true, event = "InsertEnter" }, -- 自动补全括号
  {
    "nvim-telescope/telescope.nvim", -- 文件搜索
    dependencies = {
      "nvim-lua/plenary.nvim",
    }
  },
  { "nvim-neo-tree/neo-tree.nvim", -- 文件树
    branch = "v2.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    }
  },
  { "christoomey/vim-tmux-navigator" }, -- 实现窗口间快速切换
  { "nvim-treesitter/nvim-treesitter" }, -- 语法高亮
  { "p00f/nvim-ts-rainbow" }, -- 彩虹括号
  { "romgrk/barbar.nvim" }, -- bufferline
  { "iamcco/markdown-preview.nvim" }, --markdown预览
  { "ellisonleao/glow.nvim" },
  { "akinsho/toggleterm.nvim" }, --terminal manager
  { "lambdalisue/suda.vim" }, -- 代替vim中的w !sudo tee %
  { "lewis6991/impatient.nvim" }, -- 加快在 Neovim 中加载 Lua 模块以缩短启动时间

  -- for build and run
  { "skywind3000/asyncrun.vim" },
  { "skywind3000/asynctasks.vim" },

  -- lsp
  -- LSP Support
  {"neovim/nvim-lspconfig"},             -- Required
  {"williamboman/mason.nvim"},           -- Optional
  {"williamboman/mason-lspconfig.nvim"}, -- Optional

  -- Autocompletion
  {"hrsh7th/nvim-cmp"},         -- Required
  {"hrsh7th/cmp-nvim-lsp"},     -- Required
  {"hrsh7th/cmp-buffer"},       -- Optional
  {"hrsh7th/cmp-path"},         -- Optional
  {"saadparwaiz1/cmp_luasnip"}, -- Optional
  {"hrsh7th/cmp-nvim-lua"},     -- Optional
  {"onsails/lspkind.nvim"},

  -- Snippets
  {"L3MON4D3/LuaSnip"},             -- Required
  {"rafamadriz/friendly-snippets"}, -- Optional
  {
      'glepnir/lspsaga.nvim',
      event = 'BufRead',
  },

  -- hop
  { "phaazon/hop.nvim" }, -- easy motion
  -- indent guide
  { "lukas-reineke/indent-blankline.nvim" },
  -- alpha
  { "goolord/alpha-nvim" },

  -- dap
  { "ravenxrz/nvim-dap" },
  { "theHamsta/nvim-dap-virtual-text" },
  { "rcarriga/nvim-dap-ui" },
  { "nvim-telescope/telescope-dap.nvim" },
  { "mfussenegger/nvim-dap-python" },
})




