vim.g.mapleader = " "

local set_keymap = vim.api.nvim_set_keymap

-- ===== Window management key keymaps =====
set_keymap("n", "<leader>h", ":wincmd h<CR>", { noremap = true })
set_keymap("n", "<leader>j", ":wincmd j<CR>", { noremap = true })
set_keymap("n", "<leader>k", ":wincmd k<CR>", { noremap = true })
set_keymap("n", "<leader>l", ":wincmd l<CR>", { noremap = true })


-- ===== LSP key keymaps =====
local lspopts = { noremap = true, silent = true}

set_keymap("n", "gd", "<cmd> lua vim.lsp.buf.definition()<CR>", lspopts)
set_keymap("n", "gD", "<cmd> lua vim.lsp.buf.declaration()<CR>", lspopts)
set_keymap("n", "K", "<cmd> lua vim.lsp.buf.hover()<CR>", lspopts)
set_keymap("n", "gi", "<cmd> lua vim.lsp.buf.implementation()", lspopts)
set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', lspopts)
-- set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', lspopts)
-- set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', lspopts)
-- set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', lspopts)
set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', lspopts)
set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', lspopts)
set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', lspopts)
set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', lspopts)
set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', lspopts)
set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', lspopts)
set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', lspopts)
set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', lspopts)
set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', lspopts)


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
