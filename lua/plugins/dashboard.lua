local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end

local dashboard = require "alpha.themes.dashboard"
dashboard.section.header.val = {
[[                                ]],
[[                                ]],
[[                                ]],
[[              .__               ]],
[[  ____   ____ |__| ____   ____  ]],
[[ /  _ \ /    \|  |/  _ \ /    \ ]],
[[(  <_> )   |  \  (  <_> )   |  \]],
[[ \____/|___|  /__|\____/|___|  /]],
[[            \/               \/ ]],
}
dashboard.section.buttons.val = {
  dashboard.button("e", " " .. " New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
  dashboard.button("t", " " .. " Find text", ":Telescope live_grep <CR>"),
  dashboard.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
  dashboard.button("q", " " .. " Quit", ":qa<CR>"),
}
local function footer()
  return "Don't be Lazy"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
