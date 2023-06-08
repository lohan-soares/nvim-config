local opt = vim.opt --for conciseness

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false 

-- search settings
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- appearance
opt.termguicolors = true
opt.ruler = true
opt.colorcolumn = '120'

-- backspace 
opt.backspace = "indent,eol,start"

-- split windows
opt.splitright = true
opt.splitbelow = true

-- scrolling
opt.scrolloff = 10

-- mouse
opt.mouse = "a"

-- encoding
opt.encoding = "utf-8"

