## My Neovim Configuration

Fully written in lua and use [lazy.nvim](https://github.com/folke/lazy.nvim) as plugin manager.

### some screenshots

![image](https://user-images.githubusercontent.com/93063038/214219108-ab10d13d-a233-4c11-891b-6804d2b63e30.png)
![image](https://user-images.githubusercontent.com/93063038/214219288-bedf3621-4d25-404f-87a6-63e304626578.png)
![image](https://user-images.githubusercontent.com/93063038/214219432-004d59e6-83c2-44b1-8aac-1d47a3514f35.png)
![image](https://user-images.githubusercontent.com/93063038/214219701-64e8f189-92da-41df-8c16-b5c634cd72a9.png)
### keybindings

```
vim.g.mapleader = " "

"jk" -- <Esc> (normal mode) 
"<C-s>" -- save file (normal mode)
"<C-q>" -- exit file (normal mode)
"<C-b>" -- delet the buffer (normal mode)

"<leader>nh" -- cancel the highlight (normal mode)
">" -- indent (visual mode)
"<" -- go back (visual mode)
"<leader>\" -- comment code (all mode)
"<leader>e" -- neotree focus toggle (normal mode)
"<leader>o" -- neotree float toggle (normal mode)
"<C-\" -- toggle terminal (normal mode)

"<C-p>" -- focus to previous buffer (normal mode)
"<C-n>" -- focus to next buffer (normal mode)
"<leader>1" -- Goto buffer1 (normal mode)
"<leader>2" -- Goto buffer2 (normal mode)
"<leader>3" -- Goto buffer3 (normal mode)
"<leader>4" -- Goto buffer4 (normal mode)
"<leader>5" -- Goto buffer5 (normal mode)
"<C-Left/Right/Up/Down>" -- resize the buffer size (normal mode)

"gd" -- go to the definition (normal mode)
"gD" -- peek the definition with a float window ,use <C-c>v to make it vsplit (normal mode)
"gr" -- rename (normal mode)
"gR" -- rename word in full project (normal mode)
"gf" -- find the symbol definition implement reference (normal mode)

"<leader>sl" -- show line diagnostics (normal mode)
"<leader>sc" -- show cursor diagnostics (normal mode)
"<leader>sb" -- show buffer diagnostics (normal mode)

"<leader>jl" -- HopLineStart (normal mode)
"<leader>ji" -- HopAnywhereCurrentLine (normal mode)
"<leader>ja" -- HopAnywhere (normal mode)
"<leader>jc" -- HopChar1 (normal mode)
"<leader>jC" -- HopChar2 (normal mode)
```
