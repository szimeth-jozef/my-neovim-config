local nvim_status = require "lsp-status"
local lspconfig = require "lspconfig"


require("lsp.status").activate()
-- If you are not seeing no definition message uncomment this
-- local handler = require("lsp.handlers")

local custom_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    
    -- TODO: I'm not sure how this lsp-status thing works. In case I won't use it at all
    -- just delete it. From this line below, the import at the top and lsp/status.lua.
    nvim_status.on_attach(client)

    local lspopts = { noremap = true, silent = true }

   buf_set_keymap("n", "gd", "<cmd> lua vim.lsp.buf.definition()<CR>", lspopts)
   buf_set_keymap("n", "gD", "<cmd> lua vim.lsp.buf.declaration()<CR>", lspopts)
   buf_set_keymap("n", "K", "<cmd> lua vim.lsp.buf.hover()<CR>", lspopts)
   buf_set_keymap("n", "gi", "<cmd> lua vim.lsp.buf.implementation()<CR>", lspopts)
   buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', lspopts)
   -- buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', lspopts)
   -- buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', lspopts)
   -- buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', lspopts)
   buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', lspopts)
   buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', lspopts)
   buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', lspopts)
   buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', lspopts)
   buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', lspopts)
   buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', lspopts)
   buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', lspopts)
   buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', lspopts)
   buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', lspopts)
end
    

-- ===== My language servers =====

-- C/C++ Language Server
lspconfig.ccls.setup {
    on_attach = custom_attach
}
