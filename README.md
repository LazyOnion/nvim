## My Simple Neovim Configuration

Fully written in lua and use [lazy.nvim](https://github.com/folke/lazy.nvim) as plugin manager.

### some screenshots

![image](https://user-images.githubusercontent.com/93063038/213991958-66a82835-9b7a-4886-9a31-c99651b4b6b5.png)
![image](https://user-images.githubusercontent.com/93063038/213992241-2c9c7437-052e-4bc4-bc00-8afc6c4c7e3e.png)
![image](https://user-images.githubusercontent.com/93063038/213992378-79f30b01-3de1-422d-b2cd-ad2f370077db.png)
![image](https://user-images.githubusercontent.com/93063038/213992494-bd61069b-ad15-4760-9150-5606eea0f1be.png)

### keybindins

```
vim.g.mapleader = " "

"jk" -- <Esc> (normal mode) 
"<C-s>" -- save file (normal mode)
"<C-q>" -- exit file (normal mode)
"<C-b>" -- delet the buffer (normal mode)

"<leader>nh" -- cancel the highlight (normal mode)
"<" ">" -- indent (visual mode)
"<leader>\" -- comment code (all mode)
"<leader>e" -- neotree focus toggle
"<leader>o" -- neotree float toggle

"<C-p>" -- focus to previous buffer
"<C-n>" -- focus to next buffer
"<leader>1" -- Goto buffer1
"<leader>2" -- Goto buffer2
"<leader>3" -- Goto buffer3
"<leader>4" -- Goto buffer4
"<leader>5" -- Goto buffer5
"<C-Left/Right/Up/Down>" -- resize the buffer size

"gd" -- go to the definition
"gD" -- peek the definition with a float window ,use <C-c>v to make it vsplit
"gr" -- rename
"gR" -- rename word in full project
"gf" -- find the symbol definition implement reference

"<leader>sl" show line diagnostics
"<leader>sc" show cursor diagnostics
"<leader>sb" show buffer diagnostics
```
