local ok, lspsaga = pcall(require, 'lspsaga')
if not ok then
  return
end

lspsaga.setup {
  ui = {
    border = "rounded",
    title = false,
    colors = {
      normal_bg = "",
      title_bg = ""
    },
  },
  diagnostic = {
    show_code_action = true,
    show_source = true,
  },
  lightbulb = {
    enable = true
  }
}
