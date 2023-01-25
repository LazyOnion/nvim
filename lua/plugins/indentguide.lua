local ok, indentguide = pcall(require, "indent_blankline")
if not ok then
  return
end

indentguide.setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context_start = true,
}
