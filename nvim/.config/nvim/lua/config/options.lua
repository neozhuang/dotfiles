-- OPTIONS
local opt = vim.opt

--line nums
opt.relativenumber = true
opt.number = true

-- indentation and tabs
opt.tabstop = 4
opt.shiftwidth = 4
opt.autoindent = true
opt.expandtab = true

-- search setting 
opt.ignorecase = true
opt.smartcase = true
-- incremental search
opt.incsearch = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- cursor line
opt.cursorline = true

-- 80th column
opt.colorcolumn = "80"

-- clipboard
opt.clipboard:append("unnamedplus")

-- backspace
opt.backspace = "indent,eol,start"

-- split windows
opt.splitbelow = true
opt.splitright = true

-- dw/diw/ciw works on full-word
opt.iskeyword:append("-")

-- keep cursor at least 8 rows from top/bot
opt.scrolloff = 8

-- undo dir opttings
opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.undodir = vim.fn.stdpath("state") .. "/undo"

-- faster cursor hold
opt.updatetime = 250

-- Raise dialog if you close unsaved buffer (prevent mistakes)
opt.confirm = true


