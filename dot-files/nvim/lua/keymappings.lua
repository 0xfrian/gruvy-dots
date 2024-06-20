-- +---------------------+
-- |     Keymappings     |
-- +---------------------+

-- Set leader key to space
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Escape
vim.keymap.set('i', 'kj', '<Esc>', { desc = 'To Normal Mode' })
vim.keymap.set('n', '<Esc>', ':nohlsearch<CR>')

-- Save & Quit
vim.keymap.set('n', '<C-s>', ':w<CR>', { desc = 'Save' })
vim.keymap.set('n', '<C-w>', ':wq<CR>', { desc = 'Save and quit' })
vim.keymap.set('n', '<C-q>', ':q!<CR>', { desc = 'Quit without saving' })

-- Navigation
vim.keymap.set({ 'n', 'v' }, 'j', 'gj')
vim.keymap.set({ 'n', 'v' }, 'k', 'gk')
vim.keymap.set({ 'n', 'v' }, 'H', '^')
vim.keymap.set({ 'n', 'v' }, 'J', '5j')
vim.keymap.set({ 'n', 'v' }, 'K', '5k')
vim.keymap.set({ 'n', 'v' }, 'L', '$')

-- Splits navigation/management
vim.keymap.set('n', '<leader>v', ':vsplit<CR>', { desc = 'Create vertical split' })
vim.keymap.set('n', '<leader>V', ':split<CR>', { desc = 'Create horizontal split' })
vim.keymap.set('n', '<leader>h', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<leader>l', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<leader>j', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<leader>k', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<leader>w', ':<C-w>q<CR>', { desc = 'Close current split' })

-- Buffer navigation/management
vim.keymap.set('n', '<C-Tab>', '<Plug>(cokeline-focus-next)', { desc = 'Focus next buffer' })
vim.keymap.set('n', '<C-S-Tab>', '<Plug>(cokeline-focus-prev)', { desc = 'Focus prev buffer' })
vim.keymap.set('n', '<C-[>', '<Plug>(cokeline-switch-prev)', { desc = 'Shift buffer left' })
vim.keymap.set('n', '<C-]>', '<Plug>(cokeline-switch-next)', { desc = 'Shift buffer right' })
function CloseBuffer()
  ---@diagnostic disable-next-line: assign-type-mismatch
  if #vim.fn.getbufinfo { buflisted = true } == 1 then
    vim.cmd 'bd'
  else
    vim.cmd 'bp|bd #'
  end
end
vim.keymap.set('n', '<C-w>', ':lua CloseBuffer()<CR>', { desc = 'Close buffer' })

-- Delete text
vim.keymap.set('i', '<c-bs>', '<c-w>', { desc = 'Delete word' })
vim.keymap.set('n', 'dH', 'd0', { desc = 'Delete to beginning of line' })
vim.keymap.set('n', 'dL', 'ld$', { desc = 'Delete to end of line' })

-- Indent in visual mode
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')
vim.keymap.set('x', '<', '<gv')
vim.keymap.set('x', '>', '>gv')

-- Toggle color column
vim.keymap.set("n", "<Leader>C", ":execute 'set colorcolumn=' . (&colorcolumn == '' ? '70' : '')<CR>", { desc = 'Toggle color column' })

-- File Explorer (Nvim-Tree)
vim.keymap.set('n', '\\', ':NvimTreeToggle<CR>', { desc = 'Open file explorer' })

-- Outline (Lspsaga)
vim.keymap.set('n', '|', ':Lspsaga outline<CR>', { desc = 'Open outline' })

-- Diagnostics
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Unmap keys
vim.keymap.set('', 'q', '')
vim.keymap.set('', '<C-e>', '')
vim.keymap.set('', '<C-y>', '')
vim.keymap.set('', '<C-z>', '')
vim.keymap.set('', '<C-h>', '')
vim.keymap.set('', '<C-j>', '')
vim.keymap.set('', '<C-k>', '')
vim.keymap.set('', '<C-l>', '')
