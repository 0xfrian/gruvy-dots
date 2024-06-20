-- +-----------------+
-- |     Options     |
-- +-----------------+

-- ===== Line numbers and wrapping ===================================
vim.opt.number = true -- Enable line numbers
vim.opt.numberwidth = 1 -- Set width of line number column
vim.opt.wrap = false -- Disable line wrapping
vim.opt.wrapmargin = 0 -- Remove wrap margin
vim.opt.linebreak = true -- Break line at nearest word instead of char

-- ===== Tabs, indentations, and folds ===============================
vim.opt.tabstop = 2 -- Set tab size to N spaces
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2 -- Set shift width (width of auto-indent)
vim.opt.autoindent = true -- Enable automatic indentation
vim.opt.expandtab = true -- Enable tabbing inserts spaces
vim.opt.foldmethod = 'indent' -- Set folds to be defined by indents
vim.opt.foldlevel = 99 -- Open file with all folds open

-- ===== Search ======================================================
vim.opt.ignorecase = true -- Assume case-insensitive search
vim.opt.smartcase = true -- Enable smart-case seach
vim.opt.hlsearch = true -- Enable highlight when searching

-- ===== Appearance ==================================================
vim.opt.termguicolors = true -- Enable more colors
vim.opt.signcolumn = 'yes' -- Enable sign column
vim.opt.cursorline = false -- Disable cursor line
vim.opt.cursorcolumn = false -- Disable cursor column
vim.opt.fillchars = { eob = ' ' } -- Remove tilde symbol on empty lines
vim.opt.breakindent = true -- Indent wrapped lines
vim.opt.list = true -- Display placeholder for whitespace characters
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' } -- Set placeholder symbols

-- ===== Other =======================================================
vim.g.have_nerd_font = true -- Enable Nerd Font
vim.opt.undofile = true -- Save undo history
vim.opt.clipboard = 'unnamedplus' -- Sync clipboard between OS and Neovim
vim.opt.cmdheight = 0 -- Set height of command textbox
vim.opt.mouse = '' -- Remove mouse input
vim.opt.iskeyword:append '-' -- Hyphenated words are grouped as 1 word
vim.opt.backspace = 'indent,eol,start' -- set normal backspace behavior
vim.opt.laststatus = 3 -- Enable status line
vim.opt.splitright = true -- horizontal splits open on the right
vim.opt.splitbelow = true -- vertical splits open on the bottom
vim.opt.completeopt = 'menu,menuone,noselect' -- enable completion pop-up
vim.opt.updatetime = 250 -- Set swap-file update interval
vim.opt.timeoutlen = 300 -- Set keypress wait interval (affects which-key)
vim.opt.inccommand = 'split' -- Preview substitutions live

-- +----------------------+
-- |     Autocommands     |
-- +----------------------+

-- ===== Highlight when yanking (copying) text =======================
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
