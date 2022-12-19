-- keys.lua
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
map('i', 'df', '<Esc>', {})

-- Toggle nvim-tree
map('n', 't', [[:NvimTreeToggle]], {})

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Move code blocks when highlighted
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Paste over text
vim.keymap.set("x", "<leader>p", [["_dP]])


