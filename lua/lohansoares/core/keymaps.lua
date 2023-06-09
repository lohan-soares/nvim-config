vim.g.mapleader = ' '

local keymap = vim.keymap -- for conciseness

keymap.set('n', '<leader>sv', '<C-w>v') -- split window vertically
keymap.set('n', '<leader>sh', '<C-w>s') -- split window horizontally
keymap.set('n', '<leader>se', '<C-w>=') -- make split windows equal width

keymap.set('n', '<leader>bn', ':tabnew<CR>') -- open new tab

-- plugins keymap

-- vim-maximizer
keymap.set('n', '<leader>sm', ':MaximizerToggle<CR>')

-- nvim-tree
keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')

-- telescope 
keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>')
keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<CR>')
keymap.set('n', '<leader>fc', '<cmd>Telescope grep_string<CR>')
keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<CR>')
keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<CR>')

-- barbar
local opts = { noremap = true, silent = true }

keymap.set('n', '<tab>', '<Cmd>BufferNext<CR>', opts)
keymap.set('n', '<S-tab>', '<Cmd>BufferPrevious<CR>', opts)

keymap.set('n', '<leader>bk', '<Cmd>BufferClose<CR>', opts)

keymap.set('n', '<leader>b1', '<Cmd>BufferGoto 1<CR>', opts)
keymap.set('n', '<leader>b2', '<Cmd>BufferGoto 2<CR>', opts)
keymap.set('n', '<leader>b3', '<Cmd>BufferGoto 3<CR>', opts)
keymap.set('n', '<leader>b4', '<Cmd>BufferGoto 4<CR>', opts)
keymap.set('n', '<leader>b5', '<Cmd>BufferGoto 5<CR>', opts)
keymap.set('n', '<leader>b6', '<Cmd>BufferGoto 6<CR>', opts)
keymap.set('n', '<leader>b7', '<Cmd>BufferGoto 7<CR>', opts)
keymap.set('n', '<leader>b8', '<Cmd>BufferGoto 8<CR>', opts)
keymap.set('n', '<leader>b9', '<Cmd>BufferGoto 9<CR>', opts)
