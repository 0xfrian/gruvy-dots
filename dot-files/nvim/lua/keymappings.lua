-- +---------------------+
-- |     Keymappings     |
-- +---------------------+

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true, desc = 'which_key_ignore' }

-- Set leader key to space
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Escape
keymap('i', 'kj', '<Esc>', opts)
keymap('n', '<Esc>', ':nohlsearch<CR>', opts)

-- Save & Quit
keymap('n', '<C-s>', ':w<CR>', opts)
keymap('n', '<C-w>', ':wq<CR>', opts)
keymap('n', '<C-q>', ':q!<CR>', opts)

-- Navigation
keymap({ 'n', 'v' }, 'j', 'gj', opts)
keymap({ 'n', 'v' }, 'k', 'gk', opts)
keymap({ 'n', 'v' }, 'H', '^', opts)
keymap({ 'n', 'v' }, 'J', '5j', opts)
keymap({ 'n', 'v' }, 'K', '5k', opts)
keymap({ 'n', 'v' }, 'L', '$', opts)

-- Splits navigation/management
keymap('n', '<Leader>v', ':vsplit<CR>', opts)
keymap('n', '<Leader>V', ':split<CR>', opts)
keymap('n', '<Leader>h', '<C-w><C-h>', opts)
keymap('n', '<Leader>l', '<C-w><C-l>', opts)
keymap('n', '<Leader>j', '<C-w><C-j>', opts)
keymap('n', '<Leader>k', '<C-w><C-k>', opts)
keymap('n', '<Leader>w', ':<C-w>q<CR>', opts)

-- Buffer navigation/management
keymap('n', '<C-Tab>', '<Plug>(cokeline-focus-next)', opts)
keymap('n', '<C-S-Tab>', '<Plug>(cokeline-focus-prev)', opts)
keymap('n', '<C-[>', '<Plug>(cokeline-switch-prev)', opts)
keymap('n', '<C-]>', '<Plug>(cokeline-switch-next)', opts)
function CloseBuffer()
  ---@diagnostic disable-next-line: assign-type-mismatch
  if #vim.fn.getbufinfo { buflisted = true } == 1 then
    vim.cmd 'bd'
  else
    vim.cmd 'bp|bd #'
  end
end
keymap('n', '<C-w>', ':lua CloseBuffer()<CR>', opts)

-- Delete text
keymap('i', '<c-bs>', '<c-w>', opts)
keymap('n', 'dH', 'd0', opts)
keymap('n', 'dL', 'ld$', opts)

-- Indent in visual mode
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)
keymap('x', '<', '<gv', opts)
keymap('x', '>', '>gv', opts)

-- Toggle color column
keymap('n', '<Leader>C', ":execute 'set colorcolumn=' . (&colorcolumn == '' ? '70' : '')<CR>", opts)

-- File Explorer (Nvim-Tree)
keymap('n', '\\', ':NvimTreeToggle<CR>', { desc = 'Open file explorer' })

-- Outline (Lspsaga)
keymap('n', '|', ':Lspsaga outline<CR>', { desc = 'Open outline' })

-- Icon Picker
vim.keymap.set('n', '<Leader>e', ':IconPickerNormal<CR>', { desc = 'Open Icon-Picker' })

-- Diagnostics
keymap('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
keymap('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
-- keymap('n', '<Leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
-- keymap('n', '<Leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Unmap keys
keymap('', 'q', '')
keymap('', '<C-e>', '')
keymap('', '<C-y>', '')
keymap('', '<C-z>', '')
keymap('', '<C-h>', '')
keymap('', '<C-j>', '')
keymap('', '<C-k>', '')
keymap('', '<C-l>', '')
keymap('', '<Leader>c', '')
