-- +------------------+
-- |                  |
-- |     init.lua     |
-- |                  |
-- +------------------+

-- Set up lazy plugin manager
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- Set up keymappings + options
require 'keymappings'
require 'options'

-- Set up plugins
require('lazy').setup({
  require 'plugins.alpha',
  require 'plugins.autopairs',
  require 'plugins.cokeline',
  require 'plugins.colorizer',
  require 'plugins.comment',
  require 'plugins.conform',
  require 'plugins.gitsigns',
  require 'plugins.gruvbox',
  require 'plugins.indent_line',
  require 'plugins.lsp',
  require 'plugins.lualine',
  require 'plugins.nvim-cmp',
  require 'plugins.surround',
  require 'plugins.telescope',
  require 'plugins.todo-comments',
  require 'plugins.tree',
  require 'plugins.treesitter',
  require 'plugins.trouble',
  require 'plugins.which-key',
}, {
  ui = {
    wrap = true,
    border = 'rounded',
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
