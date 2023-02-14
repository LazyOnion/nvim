local dap_status_ok, dap = pcall(require, "dap")
if not dap_status_ok then
  return
end

local dap_ui_status_ok, dapui = pcall(require, "dapui")
if not dap_ui_status_ok then
  return
end

local icons = {
    ui = require("plugins.icons").get("ui"),
    dap = require("plugins.icons").get("dap"),
}


dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
    dap.repl.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
    dap.repl.close()
end
dap.defaults.fallback.external_terminal = {
  command = '/usr/bin/alacritty';
  args = {'-e'};
}
dap.defaults.fallback.terminal_win_cmd = '50vsplit new'
-- We need to override nvim-dap's default highlight groups, AFTER requiring nvim-dap for catppuccin.
-- vim.api.nvim_set_hl(0, "DapStopped", { fg = colors.green })

vim.fn.sign_define(
    "DapBreakpoint",
    { text = icons.dap.Breakpoint, texthl = "DapBreakpoint", linehl = "", numhl = "" }
)
vim.fn.sign_define(
    "DapBreakpointCondition",
    { text = icons.dap.BreakpointCondition, texthl = "DapBreakpoint", linehl = "", numhl = "" }
)
vim.fn.sign_define("DapStopped", { text = icons.dap.Stopped, texthl = "DapStopped", linehl = "", numhl = "" })
vim.fn.sign_define(
    "DapBreakpointRejected",
    { text = icons.dap.BreakpointRejected, texthl = "DapBreakpoint", linehl = "", numhl = "" }
)
vim.fn.sign_define("DapLogPoint", { text = icons.dap.LogPoint, texthl = "DapLogPoint", linehl = "", numhl = "" })

require("plugins.dap.dap-debugpy")
require("plugins.dap.dap-ui")
require("plugins.dap.dap-virtualtext")
