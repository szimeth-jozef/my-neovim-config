-- ====== Lua vim scopes ======
-- o:  global options
-- wo: local to window
-- bo: local to buffer
-- g:  global variables
-- b:  buffer variables

local opt = vim.opt

opt.scrolloff = 10             -- set bottom offset of the current line
opt.mouse = "a"                -- enable mouse in (a - all modes)

opt.number = true              -- enable line numbering
opt.relativenumber = false     -- enable relative line numbering
opt.cursorline = true          -- enable current line highlighting
opt.wrap = false               -- enable wrapping line longer than the buffer
opt.showmode = false
opt.showcmd = true
opt.incsearch = true
opt.hlsearch = true
opt.splitright = true
opt.splitbelow = true
opt.showmatch = true
opt.pumheight = 12
opt.hidden = true

-- Tabs & Spaces
opt.tabstop = 4               -- set tab width
opt.shiftwidth = 4            -- set the amount off shifting to the right/left
opt.softtabstop = 4
opt.expandtab = true          -- enable replacing tabs with spaces
opt.autoindent = true


-- ============ Vim-Airline Options ============
vim.cmd("let g:airline#extensions#tabline#enabled = 1");
--vim.cmd("let g:airline_powerline_fonts = 1"); 
vim.g.airline_powerline_fonts = 1
--vim.cmd("let g:airline_symbols.modified = '[+]'");
-- vim.cmd("if !exists('g:airline_symbols') let g:airline_symbols = {} endif")
-- vim.cmd("let g:airline_symbols.modified = ' [+]'")
