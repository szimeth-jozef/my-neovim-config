vim.g.mapleader = " "

local set_keymap = vim.api.nvim_set_keymap

-- ===== Window management key keymaps =====
set_keymap("n", "<leader>h", ":wincmd h<CR>", { noremap = true })
set_keymap("n", "<leader>j", ":wincmd j<CR>", { noremap = true })
set_keymap("n", "<leader>k", ":wincmd k<CR>", { noremap = true })
set_keymap("n", "<leader>l", ":wincmd l<CR>", { noremap = true })


-- ===== Telescope keymaps =====
set_keymap("n", "<leader>f", "<cmd>Telescope find_files<CR>", { noremap = true })
set_keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { noremap = true })
set_keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { noremap = true })
set_keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { noremap = true })


-- ===== Terminal mode keymaps =====
set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true })


-- Switch between buffers
set_keymap("n", "<Right>", ":bn<CR>", { noremap = true, silent = true })
set_keymap("n", "<Left>", ":bp<CR>", { noremap = true, silent = true })

-- Convenience kymaps
set_keymap("n", "<C-s>", ":w<CR>", { noremap = true })
set_keymap("n", ";", ":", { noremap = true })
set_keymap("v", ";", ":", { noremap = true })

set_keymap("i", "<C-C>", "<Esc>", { noremap = true })
