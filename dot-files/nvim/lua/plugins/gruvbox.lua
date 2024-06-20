-- gruvbox
-- https://github.com/ellisonleao/gruvbox.nvim

return {
  'ellisonleao/gruvbox.nvim',
  priority = 1000,
  init = function()
    vim.o.background = 'dark'
    vim.cmd.colorscheme 'gruvbox'
    vim.cmd.hi 'Comment gui=none'
    vim.cmd.hi 'CursorLine guibg=NONE'
    vim.cmd.hi 'CursorLineNr guibg=NONE'
    vim.cmd.hi 'clear SignColumn'
    vim.cmd.hi 'clear TabLineFill'
  end,
}
