-- Idk why both g and b, I saw it in a yt video
vim.g.mapleader = ' '
vim.b.mapleader = ' '

local set_keymap = vim.api.nvim_set_keymap

-- ===== Window management key bindings =====
set_keymap('n', '<leader>h', ':wincmd h<CR>', { noremap = true })
set_keymap('n', '<leader>j', ':wincmd j<CR>', { noremap = true })
set_keymap('n', '<leader>k', ':wincmd k<CR>', { noremap = true })
set_keymap('n', '<leader>l', ':wincmd l<CR>', { noremap = true })


-- ===== LSP key bindings =====
-- TODO: finish adding basid keybindings for LSP
set_keymap('n', 'gd', '<cmd> lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
set_keymap('n', 'K', '<cmd> lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })

