-- trouble
-- https://github.com/folke/trouble.nvim

return {
  'folke/trouble.nvim',
  opts = {},
  cmd = 'Trouble',
  keys = {
    {
      '<leader>x',
      '<cmd>Trouble diagnostics toggle<cr>',
      desc = 'Diagnostics',
    },
  },
}
