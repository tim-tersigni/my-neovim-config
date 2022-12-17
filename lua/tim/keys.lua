-- keys.lua
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
map('i', 'df', '<Esc>', {})

-- Toggle nvim-tree
map('n', 't', [[:NvimTreeToggle]], {})
