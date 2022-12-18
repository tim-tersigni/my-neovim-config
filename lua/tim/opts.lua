-- opts.lua

local opt = vim.opt

-- Context
opt.colorcolumn = '80'		-- str: Show col for max line length
opt.number = true		-- bool: Show line numbers
opt.relativenumber = false	-- bool: Show relative line number
opt.scrolloff = 6		-- int: Min num lines of context
opt.signcolumn = "yes"		-- str: Show the sign column
opt.smartindent = true      -- bool: Smart indent

-- Filetypes
opt.encoding = 'utf8'		-- str: String encoding to use
opt.fileencoding = 'utf8'	-- str: File encoding to use

-- Theme
opt.syntax = "ON"		-- str: Allow syntax highlighting
opt.termguicolors = true	-- bool: If term supports ui colors, enable

-- Search
opt.incsearch = true		-- bool: Use incremental search
opt.hlsearch = false        -- bool: Highlight search matches

-- Swap File
opt.swapfile = false
opt.backup = false

-- Undo
opt.undofile = true

-- Whitespace
opt.expandtab = true		-- bool: Use spaces instead of tabs
opt.shiftwidth = 4		-- num: Size of an indent
opt.softtabstop = 4		-- num: Number of spaces tabs count for in insert mode
opt.tabstop = 4			-- num: Number of spaces tabs count for

-- Splits
opt.splitright = true		-- bool: Place new window to right
opt.splitbelow = true		-- bool: Place new window below
