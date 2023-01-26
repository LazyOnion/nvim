local ok, ts = pcall(require, 'nvim-treesitter.configs')
if not ok then
 return
end


ts.setup {
  ensure_installed = { "c", "cpp", "javascript", "json", "lua", "python", "css", "rust", "markdown", "markdown_inline" }, -- one of "all" or a list of languages
  highlight = { enable = true },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  },
  indent = { enable = true },
}
