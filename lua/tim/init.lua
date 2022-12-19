-- init.lua

-- Disable netrw to avoid race condition with nvim-tree
vim.g.loaded_netrw = 0
vim.g.loaded_netrwPlugin = 0

-- Bootstrap and setup packer
local ensure_packer = function()
local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
  return false
end

local packer_bootstrap = ensure_packer()

-- LEADER
vim.g.mapleader = ","
vim.g.localleader = "\\"

-- IMPORTS
require('tim.vars')	-- Variables
require('tim.opts')	-- Options
require('tim.plug')	-- Plugins
require('tim.keys')	-- Keymaps 

-- SETTINGS


-- -- PLUGINS
require('nvim-tree').setup()
--require('telescope').setup()

-- Sync packer
if packer_bootstrap then
    require('packer').sync()
end
