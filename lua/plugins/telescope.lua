local ok, builtin = pcall(require, 'telescope.builtin')
if not ok then 
 return 
end

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
