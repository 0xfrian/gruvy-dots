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
keymap('n', '<C-Up>', ':resize +2<CR>', opts)
keymap('n', '<C-Down>', ':resize -2<CR>', opts)
keymap('n', '<C-Left>', ':vertical resize -2<CR>', opts)
keymap('n', '<C-Right>', ':vertical resize +2<CR>', opts)

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

-- Toggle word wrap
keymap('n', '<Leader>W', ":set wrap!<CR>", { desc = 'Toggle word wrap' })

-- Toggle color column
keymap('n', '<Leader>cc', ":execute 'set colorcolumn=' . (&colorcolumn == '' ? '70' : '')<CR>", { desc = 'Toggle column' })

-- Toggle colorizer
keymap('n', '<Leader>C', ':ColorizerToggle<CR>', { desc = 'Toggle Colorizer' })

-- File Explorer (Nvim-Tree)
keymap('n', '\\', ':NvimTreeToggle<CR>', { desc = 'Open file explorer' })

-- Outline (Lspsaga)
keymap('n', '|', ':Lspsaga outline<CR>', { desc = 'Open outline' })

-- LSP
keymap('n', '<Leader>Lm', ':Mason<CR>', { desc = 'Open Mason' })
keymap('n', '<Leader>Li', ':LspInfo<CR>', { desc = 'View LSP Info' })
keymap('n', '<Leader>Lr', ':LspRestart<CR>', { desc = 'Restart LSP' })

-- Icon Picker
vim.keymap.set('n', '<Leader>e', ':IconPickerNormal emoji<CR>', { desc = 'Open Icon-Picker' })

-- Diagnostics
keymap('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
keymap('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
keymap('n', 'ge', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })

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
