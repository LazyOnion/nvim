## My Neovim Configuration

Fully written in lua and use [lazy.nvim](https://github.com/folke/lazy.nvim) as plugin manager.

### some screenshots
![image](https://user-images.githubusercontent.com/93063038/224531183-26a6636d-1e19-4727-ba53-79e416bba0b2.png)
![image](https://user-images.githubusercontent.com/93063038/224531287-4ab4b877-7b34-4710-8af0-39f0f82bfc1c.png)
![image](https://user-images.githubusercontent.com/93063038/224531345-192f22f2-9c32-4a76-bce8-7a167c5bacd9.png)
![image](https://user-images.githubusercontent.com/93063038/224531497-198b2d1e-6bdb-4ccb-9de5-006bf5200f82.png)
![image](https://user-images.githubusercontent.com/93063038/224531535-e98b6404-f7ed-4492-a39e-001de53a3796.png)
![image](https://user-images.githubusercontent.com/93063038/224531572-7ebab3fc-6e04-4882-ae0f-08cae5bab118.png)
![image](https://user-images.githubusercontent.com/93063038/224531615-6aec2c2e-0077-4275-a087-38a7da8ae914.png)
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
"go" -- overview the variables classes functions methods

"<leader>sl" -- show line diagnostics (normal mode)
"<leader>sc" -- show cursor diagnostics (normal mode)
"<leader>sb" -- show buffer diagnostics (normal mode)

"<leader>jl" -- HopLineStart (normal mode)
"<leader>ji" -- HopAnywhereCurrentLine (normal mode)
"<leader>ja" -- HopAnywhere (normal mode)
"<leader>jc" -- HopChar1 (normal mode)
"<leader>jC" -- HopChar2 (normal mode)

"<leader>db" -- breakpoint
"<leader>c" -- continue
"<leader>so" -- step over
"<leader>t" -- terminate
...buxiangxiele!
```
