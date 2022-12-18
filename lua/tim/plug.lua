-- plug.lua

-- ENSURE PACKER INSTALL
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

-- PACKER
return require('packer').startup(function(use)
    -- PLUGINS GO HERE

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- nvim-tree
    use{
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    require('nvim-tree').setup()

    -- Telescope
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Sync packer
    if packer_bootstrap then
        require('packer').sync()
    end
end)
